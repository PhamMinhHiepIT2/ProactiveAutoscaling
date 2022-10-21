from typing import List
import time
import logging
import threading
from queue import Queue
from urllib.parse import urlencode
import socketio


_logger = logging.getLogger(__name__)

NS = '/api/v1/chat_gateway'
EV = 'on_user_message'


class ChatUser:

    def __init__(self, sio: socketio.Client, config: dict):
        self.sio = sio
        self.config = config
        self.sio.event(namespace=NS)(self.connect)
        self.sio.event(namespace=NS)(self.disconnect)
        self.sio.event(namespace=NS)(self.on_authenticated)
        self.sio.event(namespace=NS)(self.on_bot_message)
        self._is_connected = threading.Event()
        self._bot_queue = Queue()
        self.user_name = None

    def connect(self):
        _logger.debug('conn-ed')

    def disconnect(self):
        _logger.debug('disconn-ed')

    def _emit(self, event: str, data: dict):
        return self.sio.emit(event=event, data=data, namespace=NS)

    def on_authenticated(self, data: dict):
        self.client_id = data['client_id']
        self._is_connected.set()
        if self.user_name:
            self.postback()
        self._emit('join_room', self.client_id)

    def postback(self):
        body = {
            'agent_id': self.config['aid'],
            'channel_id': self.config['cid'],
            'client_id': self.client_id,
            'data': 'bắt đầu',
            'data_payload': '$SYS_PRONOUN',
            'user_name': self.user_name
        }
        self._emit('on_user_postback', body)

    def do_connect(self, user_name=None):
        if user_name:
            self.user_name = user_name
        params = {
            'agent_id': self.config["aid"],
            'token': self.config["token"],
            'welcome_msg': 'alo',
            'user_name': user_name,
        }
        url = f'{self.config["host"]}?{urlencode(params)}'
        self.sio.connect(url, namespaces=[NS], transports=['websocket'])
        self._is_connected.wait()

    def close(self):
        self.sio.disconnect()

    def on_bot_message(self, data):
        # for msg in data['data']:
        #     _logger.debug(f"{msg['value']:>64} <")
        #     self._bot_queue.put(msg['value'])
        self._bot_queue.put(data['data'])

    def send_message(self, message: str):
        body = {
            'agent_id': self.config['aid'],
            'channel_id': self.config['cid'],
            'client_id': self.client_id,
            'data': message,
            'language': 'vi',
            'timestamp': int(time.time() * 1000),
            'user_email': '',
            'user_name': '',
            'user_phone': '',
        }
        _logger.debug(f"> {message}")
        self._emit(EV, body)

    @staticmethod
    def is_bot_message_valid(actual: str, expects: List[str]):
        for expect in expects:
            if expect in actual:
                return True
        return False

    def send_recv(self,
                  user_message: str,
                  bot_message_expects: List[str],
                  timeout: float = None):
        self.send_message(user_message)
        bot_message_actual = self._bot_queue.get(timeout=timeout)
        self._bot_queue.task_done()

        is_valid = self.is_bot_message_valid(
            bot_message_actual, bot_message_expects)
        if not is_valid:
            raise ValueError(
                f"Got '{bot_message_actual}' instead of '{bot_message_expects[0]}'")

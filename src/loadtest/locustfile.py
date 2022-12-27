from locust import HttpUser, task


class ContentPlatform(HttpUser):
    def on_start(self):
        """ on_start is called when a Locust start before any task is scheduled """
        self.client.verify = False

    @task
    def check_calendar(self):
        self.client.get("/internal_api/v1/cp/calendar/current-time", headers={
                        "token": "1aa2b0f412cc8e2baf5c8feff5dd4bef4e18d0d636dbe19368fa6b9a2b44986f"})

    @task
    def check_cinema(self):
        self.client.get(
            "/internal_api/v1/cp/movies/cinemas_by_movie", headers={
                "token": "1aa2b0f412cc8e2baf5c8feff5dd4bef4e18d0d636dbe19368fa6b9a2b44986f"})

    # @task
    # def check_tts(self):
    #     self.client.put('/internal_api/v1/cp/tales/614afce02d78532d514caf17/tts', headers={
    #         "token": "1aa2b0f412cc8e2baf5c8feff5dd4bef4e18d0d636dbe19368fa6b9a2b44986f"
    #     }, data='')

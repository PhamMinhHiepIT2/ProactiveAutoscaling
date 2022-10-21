from typing import List, NamedTuple
from itertools import cycle
import yaml
import pandas as pd


def load_yaml(path: str):
    with open(path) as f:
        return yaml.safe_load(f)


def load_excel(path: str):
    return pd.read_excel(path)


def load_samples(path: str = 'data/acb.yml'):
    samples = load_yaml(path)
    samples = ((intent, *tuple(sample.items())[0])
               for intent, sample in samples.items())
    for intent, umessage, bmessages in cycle(samples):
        yield umessage, bmessages


def load_samples_echo():
    for i in cycle(range(100)):
        m = f'bb {i}'
        yield m, [m]


def load_samples_vf():
    df = load_excel('data/vfcb.xlsx')
    return df['Unnamed: 3'].dropna()[1:].drop_duplicates().to_list()


def load_samples_vf_p2():
    df = load_excel('twin.xlsx')
    return df["sample"][df['matched'] == False].to_list()


def load_samples_vf_p3():
    df = load_excel('twin2.xlsx')
    return df["sample"][df['matched'] == False].to_list()


class TestResult(NamedTuple):
    sample: str
    matched: bool
    result1: str
    result2: str


def export_results(results: List[TestResult], path: str):
    df = pd.DataFrame.from_records(results, columns=TestResult._fields)
    df.to_excel(path)

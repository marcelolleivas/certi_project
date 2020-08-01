import requests
import simplejson

base_url = 'http://177.71.114.188'


def get_req(number, language="portuguese"):
    if language == "english":
        return requests.get(f'{base_url}/en/{number}')
    return requests.get(f'{base_url}/{number}')


def evaluate_response(response):
    print(response)
    try:
        data = response.json()
    except simplejson.errors.JSONDecodeError:
        raise Exception("Response is not a json")
    return data.get('extenso')

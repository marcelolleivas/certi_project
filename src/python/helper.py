import requests

base_url = 'http://177.71.114.188'


def get_req(language, number):
    if language == "portuguese":
        response = requests.get(f'{base_url}/{number}')
    elif language == "english":
        response = requests.get(f'{base_url}/en/{number}')
    print(response)
    return response.json().get('extenso')


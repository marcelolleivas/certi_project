import unittest
import requests

base_url = 'http://177.71.114.188'





def test_invalid_positive_number_english():
    # Given
    number = 10000
    # When
    response = requests.get(f'{base_url}/en/{number}')
    # Then
    assert response.json().get('extenso') == 'Invalid data'


def test_invalid_negative_number_english():
    # Given
    number = -10000
    # When
    response = requests.get(f'{base_url}/en/{number}')
    # Then
    assert response.json().get('extenso') == 'Invalid data'


def test_invalid_parameter_portuguese():
    # Given
    number = 'abc'
    # When
    response = requests.get(f'{base_url}/{number}')
    # Then
    assert response.json().get('extenso') == 'Invalid data'


def test_invalid_parameter_english():
    # Given
    number = 'abc'
    # When
    response = requests.get(f'{base_url}/en/{number}')
    # Then
    assert response.json().get('extenso') == 'Invalid data'


if __name__ == '__main__':
    unittest.main()

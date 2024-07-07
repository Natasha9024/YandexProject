import configuration
import requests
import data

def post_new_order(body):
    return requests.post(configuration.URL_SERVICE + configuration.CREATE_ORDER_PATH,
                         json=body)

def get_order_url(track_number):
    responce_get = requests.get(f"{configuration.URL_SERVICE}{configuration.GET_ORDER_PATH}?t={track_number}")
    return responce_get

# Наталия Зубец, 18-я когорта — Финальный проект. Инженер по тестированию плюс
import create_request
import data


def test_create_order():
    responce = create_request.post_new_order(data.order_body)
    track_number = responce.json()["track"]
    responce_get = create_request.get_order_url(track_number)
    assert responce_get.status_code == 200
    
test_create_order()
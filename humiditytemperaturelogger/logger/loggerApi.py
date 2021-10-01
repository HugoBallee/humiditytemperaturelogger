import adafruit_dht
import requests
import time

from board import D22

def connectDHT11(pin):
	while True:
		try:
			dht_device = adafruit_dht.DHT11(pin)
			if dht_device is not None:
				return dht_device
			print(f'dht_device is None')
		except RuntimeError as error:
			print(f'{error}')
		time.sleep(1)


def get_temperature(dht_device):
	while True:
		try:
			temperature = dht_device.temperature
			if temperature is not None:
				return temperature
			print(f'temperature is None')
		except RuntimeError as error:
			print(f'{error}')
		time.sleep(1)

def get_humidity(dht_device):
	while True:
		try:
			humidity = dht_device.humidity
			if humidity is not None:
				return humidity
			print(f'humidity is None')
		except RuntimeError as error:
			print(f'{error}')
		time.sleep(1)

def log():
	dht_device = connectDHT11(D22)
	temperature = get_temperature(dht_device)
	humidity = get_humidity(dht_device)
	exit(dht_device)
	r = requests.get(f'http://127.0.0.1:8000/log/{humidity}/{temperature}')
	if r.status_code is not 200:
		error(f'STATUS_CODE:{r.status_code} {r.text}')
	else:
		print(f'{r.text}')

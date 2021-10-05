import requests
import Adafruit_DHT

def log():
	humidity, temperature = Adafruit_DHT.read_retry(11, 23)
	r = requests.get(f'http://127.0.0.1:8000/log/{humidity}/{temperature}')
	if r.status_code is not 200:
		print(f'STATUS_CODE:{r.status_code} {r.text}')
	else:
		# print(f'log: {r.text}')
		pass
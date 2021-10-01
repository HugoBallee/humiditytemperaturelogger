import requets

def log():
	humidity = 50
	temperatur = 20
	r = requests.get(f'http://127.0.0.1:8000/log/{humidity}/{temperature}')
	if r.status_code is not 200:
		error(f'STATUS_CODE:{r.status_code} {r.text}')
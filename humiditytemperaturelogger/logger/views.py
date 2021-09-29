from django.shortcuts import render
from django.http import HttpResponse

from .models import Log
from .models import HumidityLimits
from .models import TemperatureLimits

# Create your views here.
def index(request):
	logs = Log.objects.order_by('date')
	humidityLimits = HumidityLimits.objects.all()[0]
	temperatureLimits = TemperatureLimits.objects.all()[0]
	humidityMins = [humidityLimits.min_humidity for x in range(len(logs))]
	temperatureMins = [temperatureLimits.min_temperature for x in range(len(logs))]
	humidityMaxs = [humidityLimits.max_humidity for x in range(len(logs))]
	temperatureMaxs = [temperatureLimits.max_temperature for x in range(len(logs))]

	context = {
		'logs': logs,
		'humidityLimits': {
			'min': humidityMins,
			'max': humidityMaxs
		},
		'temperatureLimits': {
			'min': temperatureMins,
			'max': temperatureMaxs
		},
	}
	return render(request, 'logger/index.html', context)

def log(request, humidity, temperature):
	log = Log(humidity=humidity, temperature=temperature)
	log.save()
	return HttpResponse(f'Added log: {log}')
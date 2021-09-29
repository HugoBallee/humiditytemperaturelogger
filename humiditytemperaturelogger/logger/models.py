from django.db import models

# Create your models here.
class Log(models.Model):
	date = models.DateTimeField('date logged', auto_now_add=True)
	humidity = models.FloatField()
	temperature = models.FloatField()
	
	def __str__(self):
		return f'{self.date}(humidity: {self.humidity}%, temperature: {self.temperature}°C)'

class HumidityLimits(models.Model):
	min_humidity = models.FloatField()
	max_humidity = models.FloatField()
	
	def __str__(self):
		return f'min: {self.min_humidity}%, max: {self.max_humidity}%'

class TemperatureLimits(models.Model):
	min_temperature = models.FloatField()
	max_temperature = models.FloatField()

	def __str__(self):
		return f'min: {self.min_temperature} °C, max: {self.max_temperature} °C'

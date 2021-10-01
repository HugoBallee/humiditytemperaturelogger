from django.contrib import admin

from .models import Log
from .models import HumidityLimits
from .models import TemperatureLimits

# Register your models here.
admin.site.register(Log)

class HumidityLimitsAdmin(admin.ModelAdmin):
	def has_add_permission(self, request):
		return not HumidityLimits.objects.exists()
admin.site.register(HumidityLimits, HumidityLimitsAdmin)


class TemperatureLimitsAdmin(admin.ModelAdmin):
	def has_add_permission(self, request):
		return not TemperatureLimits.objects.exists()
admin.site.register(TemperatureLimits, TemperatureLimitsAdmin)

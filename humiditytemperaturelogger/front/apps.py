from django.apps import AppConfig


class FrontConfig(AppConfig):
    name = 'front'

    # def ready(self):
    # 	from logger import logger
    # 	logger.start()
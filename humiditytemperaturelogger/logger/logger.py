from datetime import datetime
from apscheduler.schedulers.background import BackgroundScheduler
from logger import loggerApi

def start():
    scheduler = BackgroundScheduler()
    scheduler.add_job(loggerApi.log, 'interval', minutes=1)
    scheduler.start()
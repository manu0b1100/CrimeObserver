from django.core.management.base import BaseCommand
from DataCollection.utils import SetId
import time

class Command(BaseCommand):
    """
    custom command to run apollo client
    """
    def handle(self, *args, **options):
        s=SetId()
        time.sleep(5)
        s.setDistrictId()

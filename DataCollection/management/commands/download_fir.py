from django.core.management.base import BaseCommand
from DataCollection.utils import downloadFirs


class Command(BaseCommand):
    """
    custom command to run apollo client
    """
    def handle(self, *args, **options):
        downloadFirs()

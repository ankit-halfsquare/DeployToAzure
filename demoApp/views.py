from django.shortcuts import render,HttpResponse
import os
from dotenv import load_dotenv
load_dotenv()

# Create your views here.


def index(request):
    secret_key = os.getenv('key','failed')
    return HttpResponse(secret_key)

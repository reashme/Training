from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    my_dict={'insert_name':"Good job Reash"}
    return render(request, 'FIRSTAPPLICATION/index.html', context=my_dict)

# Create your views here.

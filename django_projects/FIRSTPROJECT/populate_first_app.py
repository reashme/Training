import os
os.environ.setdefault('DJANGO_SETTINGS_MODULE','FIRSTPROJECT.settings')

import django
django.setup()


import random
form FIRSTAPPLICATION.models import Name,Id,Contact_Address
from faker import Faker


fakegen=Faker()
names=['Reash','Savy','Naima','Anu']

def add_name():
    t=Name.objects.get_or_create(top_name=random.choice(names))[0]
    t.save()
    return t

def users(N=30):
    for entry in range(N):
        top=add_topic()

        fake_id=fakegen.id()
        fake_name=fakegen.name()
        fake_contactaddress=fakegen.contact_address()

        userids=Id.objects.get_or_create(topic=top,id=fake_id,contactaddress=fake_contact_address)[0]

        con_add=Contact_Address.objects.get_or_create11(name=userids,id=fake_id)[0]


if __name__= '__main__':
    print("populating script")
    populate(30)
    print("populating complete")
    


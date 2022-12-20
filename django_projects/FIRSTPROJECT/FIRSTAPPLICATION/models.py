from django.db import models

class Name(models.Model):
    top_name=models.CharField(max_length=150,unique=True)

    def __str__(self):
        return self.top_name


class Id(models.Model):
    my_id=models.CharField(max_length=150,unique=True)

    def __str__(self):
        return self.my_id


class Contact_Address(models.Model):
    co_ad=models.CharField(max_length=250,unique=True)


    def __str__(self):
        return self.co_ad

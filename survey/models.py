from django.db import models
from django import forms

class Section(models.Model):
    title = models.CharField(max_length=200)
    def __unicode__(self):
        return self.title

class Choice(models.Model):
    section = models.ForeignKey(Section)
    choice = models.CharField(max_length=200)
    def __unicode__(self):
        return self.choice

class Age(forms.Form):
    AGE_CHOICE = (
        ('lt','less than 60'),
        ('gt','greater than 60')
        )
    AGE = forms.ChoiceField(choices=AGE_CHOICE)    
   
class Procedure(forms.Form):
    PROCEDURE_CHOICES = (
        ('Arthoplasty', 'Arthoplasty'),
        ('Decompression with 1 level fusion', 'Decompression with 1 level fusion'),
        ('Decompression with 2 level fusion', 'Decompression with 2 level fusion'),
        ('Decompression 2 or more levels of fusion', 'Decompression 2 or more levels of fusion'),
        )
    PROCEDURE = forms.ChoiceField(choices=PROCEDURE_CHOICES)

class Status(forms.Form):
    PROCEDURE_CHOICES = (
        ('Preoperative', 'Preoperative'),
        ('4 weeks postop', '4 weeks postop'),
        ('6 weeks postop', 'Decompression with 2 level fusion'),
        ('12 weeks postop', 'Decompression 2 or more levels of fusion'),
        ('6 months postop', 'Decompression 2 or more levels of fusion'),
        ('12 months postop', 'Decompression 2 or more levels of fusion'),                
        )
    STATUS = forms.ChoiceField(choices=PROCEDURE_CHOICES)

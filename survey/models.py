from django.db import models
from django.forms import ModelForm

class Section(models.Model):
    title = models.CharField(max_length=200)
    def __unicode__(self):
        return self.title

class Choice(models.Model):
    section = models.ForeignKey(Section)
    choice = models.CharField(max_length=200)

    def __unicode__(self):
        return self.choice

class ChoiceForm(ModelForm):
    class Meta:
        model = Choice
        exclude = ('section')

from django.shortcuts import render_to_response
from survey.models import Section

def index(request):
    sections=Section.objects.all()
    return render_to_response('survey/index.html',{'sections': sections})

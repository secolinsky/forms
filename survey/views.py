from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from survey.models import Section, Age, Procedure, Status

def index(request):
    sections=Section.objects.all()
    age=Age()
    procedures=Procedure()
    status=Status()
    return render_to_response('survey/index.html',
                              {'sections': sections,'age': age,'procedure':procedures,'status':status},
                              context_instance=RequestContext(request))

def thank_you(request):    
    sections=request.POST
    selections=[]
    for s in sections:
        if s != "csrfmiddlewaretoken":
            selections.append(sections[s])
    age=Age(request.POST)
    return render_to_response('survey/thank_you.html',{'data': selections})

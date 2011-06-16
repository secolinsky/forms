from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from survey.models import Survey, Age, Procedure, Status

def index(request):
    survey=Survey.objects.get(pk=1)
    age=Age()
    procedures=Procedure()
    status=Status()

    sections=survey.section_set.all()
    return render_to_response('survey/oswestry/index.html',
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

def neck(request):
    survey=Survey.objects.get(pk=2)
    age=Age()
    procedures=Procedure()
    status=Status()

    sections=survey.section_set.all()
    return render_to_response('survey/neck/index.html',
                              {'sections': sections,'age': age,'procedure':procedures,'status':status},
                              context_instance=RequestContext(request))

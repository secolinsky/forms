from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from survey.models import Section

def index(request):
    sections=Section.objects.all()
    return render_to_response('survey/index.html',{'sections': sections},
                              context_instance=RequestContext(request))

def thank_you(request):    
    sections=request.POST
    selections=[]
    for s in sections:
        if s != "csrfmiddlewaretoken":
            selections.append(sections[s])
    return render_to_response('survey/thank_you.html',{'data': selections})
    

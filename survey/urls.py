from django.conf.urls.defaults import *
from survey.models import Section

urlpatterns = patterns('',
                       (r'^$','survey.views.index'),
                       )
        




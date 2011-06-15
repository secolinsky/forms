# This also imports the include function
from django.conf.urls.defaults import *
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
                       (r'^survey/', include('survey.urls')),
                       (r'^admin/', include(admin.site.urls)),
                       )

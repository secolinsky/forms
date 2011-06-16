from django.conf.urls.defaults import *

urlpatterns = patterns('',
                       (r'^oswestry/$','survey.views.index'),
                       (r'^neck/$','survey.views.neck'),
                       (r'^thank_you/$','survey.views.thank_you'),
                       )
        




from django.conf.urls.defaults import *

urlpatterns = patterns('',
                       (r'^$','survey.views.index'),
                       (r'^thank_you/$','survey.views.thank_you'),
                       )
        




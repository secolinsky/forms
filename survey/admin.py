from survey.models import Section, Choice
from django.contrib import admin

class ChoiceInline(admin.TabularInline):
    model = Choice
    extra = 5


class SectionAdmin(admin.ModelAdmin):
    inlines = [ChoiceInline]
    
admin.site.register(Section, SectionAdmin)
                                        

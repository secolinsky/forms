from survey.models import Survey, Section, Question
from django.contrib import admin

class QuestionInline(admin.TabularInline):
    model = Question
    extra = 1

class SectionInline(admin.TabularInline):
    model = Section
    extra = 1

class SurveyAdmin(admin.ModelAdmin):
    inlines = [SectionInline, QuestionInline]

admin.site.register(Survey, SurveyAdmin)                                        

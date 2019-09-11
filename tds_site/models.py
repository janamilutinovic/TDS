from django.db import models
from django.urls import reverse
from django.core.validators import RegexValidator
from django_countries.fields import CountryField

# Create your models here.
class Link(models.Model):
    regex_validator = RegexValidator(r'http://mind.now/([a-zA-Z0-9]{1,5}$)', "The short version of URL should be in the next format: http://mind.now/<short_url_identifier> (max 5 chars)")
    link = models.TextField(validators=[regex_validator])

    def __str__(self):
        return self.link

    def get_absolute_url(self):
        return reverse('link-detail',kwargs={'link_id':self.pk})

    class Meta:
        unique_together = ["link"]


class LinkPref(models.Model):
    link =  models.ForeignKey(Link, on_delete=models.CASCADE, null=True)
    landing_page = models.CharField(max_length=50)
    country = CountryField()
    weight = models.FloatField()

    # def __str__(self):
    #     return self.link

    def get_absolute_url(self):
        return reverse('linkpref-detail',kwargs={'id':self.pk})


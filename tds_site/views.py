from django.shortcuts import get_object_or_404, render, redirect
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.contrib.auth.mixins import LoginRequiredMixin
from .models import Link, LinkPref, LinkStat
from django.http import HttpResponse
from .forms import LinkPrefForm, LinkPrefUpdateForm
from django.views import View
from django.contrib.gis.geoip2 import GeoIP2
from rest_framework import viewsets
from .serializers import LinkStatSerializer
import numpy as np


# Create your views here.

def home(request):
    context = {
        'links' : Link.objects.all()
    }
    return render(request, 'tds_site/home.html', context)

def link_detail(request, link_id):
    link = get_object_or_404(Link, pk = link_id)
    return render(request, 'tds_site/link_detail.html', {'link' : link})

def linkpref_detail(request, id):
    linkpref = get_object_or_404(LinkPref, pk=id)
    return render(request, 'tds_site/linkpref_detail.html', {'linkpref': linkpref})

def linkpref_create(request, link_id):
    link = get_object_or_404(Link, pk=link_id)
    return render(request, 'tds_site/linkpref_form.html', {'link': link})

class LinkCreateView(LoginRequiredMixin,CreateView):
    model = Link
    fields = ['link']

    def form_valid(self, form):
        return super().form_valid(form)

class LinkPrefCreateView(LoginRequiredMixin,CreateView):

    model = LinkPref
    fields = ['landing_page', 'country', 'weight']
    context_object_name = 'linkprefs'

    def form_valid(self, form):
        return super().form_valid(form)

class LinkDeleteView(LoginRequiredMixin,DeleteView):
    model = Link
    success_url = '/'

    def form_valid(self, form):
        return super().form_valid(form)

def linkpref_create_view(request,link_id):
    l =  get_object_or_404(Link, pk=link_id)
    dict = {'link_id': link_id}
    form = LinkPrefForm(request.POST or None,dict)
    context = {'form': form, 'link_id': link_id, 'link': l}

    if form.is_valid():
        form.save()
        return render(request,"tds_site/link_detail.html", context)

    return render(request,"tds_site/linkpref_create_form.html", context)

# class UpdateLinkPref(View):
#     template_name="tds_site/linkpref_form.html";
#     def get_object(self):
#         id = self.kwargs.get('id')
#         obj = None
#         if id is not None:
#             obj = get_object_or_404(Link,id=id)
#         return None
#
#     def get(self, request, id=None, *args, **kwargs):
#         context = {}
#         obj = self.get_object()
#         if obj is not None:
#             form = LinkPrefForm(intance=obj)
#             context['object'] = obj
#             context['form'] = form
#         return render(request, self.template_name, context)
#
#     def post(self, request, id=None, *args, **kwargs):
#         context = {}
#         obj = self.get_object()
#         if obj is not None:
#             form = LinkPrefForm(request.POST,intance=obj)
#             if form.is_valid():
#                 form.save()
#             context['object'] = obj
#             context['form'] = form
#         return render(request, self.template_name, context)
#
# #
# #
# def update_linkpref(request, link_id):
#     link = get_object_or_404(Link, pk=link_id)
#     linkpref = link.linkpref_set.get(link_id=link_id)
#     form = LinkPrefUpdateForm(request.POST or None,instance=link3)
#     context = {'form': form, 'link_id': link_id, 'link': link}
#     print("context ", context)
#
#     if request.method == 'GET' or request.method == None:
#         return render(request, "tds_site/linkpref_form.html", context)
#
#     if request.method == 'POST':
#         if form.is_valid():
#             form.save()
#             return render(request, "tds_site/linkpref_detail.html", context)
#
#     return render(request, "tds_site/linkpref_form.html", context)

    # link = get_object_or_404(Link,pk=link_id)
    # try:
    #     return render(request, 'tds_site/linkpref_form.html', {'link': link})
    # except(KeyError, LinkPref.DoesNotExist):
    #     return render(request, 'tds_site/linkpref_form.html', { 'link':link, 'error_message': "Enter landing page"})



class LinkUpdateView(LoginRequiredMixin,UpdateView):
    model = LinkPref
    fields = ['landing_page','country','weight']

    def form_valid(self, form):
        return super().form_valid(form)

class LinkPrefDeleteView(LoginRequiredMixin,DeleteView):
    model = LinkPref
    success_url = '/'

    def form_valid(self, form):
        return super().form_valid(form)

class LinkStatView(viewsets.ModelViewSet):
    queryset = LinkStat.objects.all()
    serializer_class = LinkStatSerializer


def link_redirect_view(request, link_id):
    link = get_object_or_404(Link, pk=link_id)
    g = GeoIP2()
    ip = request.META.get('REMOTE_ADDR', None)
    if ip == '127.0.0.1':
        my_country_code = 'RS'
    else:
        my_country_code = g.country(ip)['country_code']

    # print("get ip ", request.META.get('HTTP_X_FORWARDED_FOR'))
    redirect_page = "https://google.com"
    linkprefs = link.linkpref_set.all()
    rps = {}
    for lp in linkprefs:
        print(lp.country.code)
        if lp.country.code == my_country_code:
            rps[lp.landing_page] = lp.weight


    redirect_page = np.random.choice(list(rps.keys()), p=list(rps.values()))
    print(redirect_page)
    return redirect(redirect_page)




from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.contrib.auth.mixins import LoginRequiredMixin
from .models import Link, LinkPref

# Create your views here.

def home(request):
    context = {
        'links' : Link.objects.all(),
        'linkprefs' : LinkPref.object.all(),
        #'linkic' : Link.objects.get(pk=link_id)
    }

    return render(request, 'tds_site/home.html', context)

class LinkListView(ListView):
    model = Link
    template_name = 'tds_site/home.html'
    #<app>/<model>_<viewtype.html>
    context_object_name='links'

class LinkListView(ListView):
    model = Link
    template_name = 'tds_site/home.html'
    #<app>/<model>_<viewtype.html>
    context_object_name='links'

class LinkDetailView(DetailView):
    model = Link

class LinkPrefDetailView(DetailView):
    model = LinkPref
    context_object_name = 'linkprefs'

class LinkCreateView(LoginRequiredMixin,CreateView):
    model = Link
    fields = ['link']

    def form_valid(self, form):
        return super().form_valid(form)

class LinkPrefCreateView(LoginRequiredMixin,CreateView):
    lid = Link.objects.get(pk=6)
    model = LinkPref
    fields = ['landing_page', 'country', 'weight']
    context_object_name = 'linkprefs'

    def form_valid(self, form):
        return super().form_valid(form)

class LinkUpdateView(LoginRequiredMixin,UpdateView):
    model = LinkPref
    fields = ['landing_page','country','weight']

    def form_valid(self, form):
        return super().form_valid(form)

class LinkDeleteView(LoginRequiredMixin,DeleteView):
    model = Link
    success_url = '/'

    def form_valid(self, form):
        return super().form_valid(form)


# def linkrefs(request):
#     return render(request, 'tds_site/linkpref_form.html')
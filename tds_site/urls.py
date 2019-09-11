from django.urls import path
from .views import LinkCreateView, LinkUpdateView, LinkDeleteView, LinkPrefCreateView
from . import views

urlpatterns = [
    path('', views.home,name='tds-home'),
    path('link/<int:link_id>/', views.link_detail,name='link-detail'),
    path('link/new/', LinkCreateView.as_view(),name='link-create'),
    path('link/<int:pk>/delete/', LinkDeleteView.as_view(),name='link-delete'),
    path('linkpref/<int:id>/', views.linkpref_detail ,name='linkpref-detail'),
    path('linkpref/<int:pk>/update/', LinkUpdateView.as_view(),name='linkpref-update'),
    path('linkpref/<int:link_id>/create/',views.linkpref_create_view, name='linkpref-create'),
    path('link/<int:link_id>/redirect/',views.link_redirect_view, name='link-redirect')
]


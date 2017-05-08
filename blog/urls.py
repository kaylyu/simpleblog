# -*- coding: utf-8 -*-
# Created by Administrator on 2017/5/6 0006.
from django.conf.urls import url
from . import views
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^article/show/(?P<article_id>[0-9]+)$', views.show, name='show_page'),
    url(r'^article/create/$', views.create, name='create_page'),
    url(r'^article/update/(?P<article_id>[0-9]+)$', views.update, name='update_page')
]

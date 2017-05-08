# -*- coding: utf-8 -*-
# Created by Administrator on 2017/5/6 0006.
from django.forms import ModelForm
from .models import Article


class ArticleForm(ModelForm):
    class Meta:
        model = Article
        fields = ('title', 'content')
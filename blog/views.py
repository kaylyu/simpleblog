from django.shortcuts import render
from django.http import HttpResponseRedirect
from . import models
from . forms import ArticleForm


def index(request):
    articles = models.Article.objects.order_by('-pub_time').all()
    return render(request, 'blog/index.html', {'articles': articles})


def show(request, article_id):
    article = models.Article.objects.get(pk=article_id)
    return render(request, 'blog/view.html', {'article': article})


def create(request):
    if request.method == 'POST':
        form = ArticleForm(request.POST)
        if form.is_valid():
            title = form.cleaned_data['title']
            content = form.cleaned_data['content']
            models.Article.objects.create(title=title, content=content)
            return HttpResponseRedirect('/blog/')
    else:
        form = ArticleForm()
        return render(request, 'blog/create.html', {'form': form, "error": form.errors})


def update(request, article_id):
    article = models.Article.objects.get(pk=article_id)
    if request.method == 'POST':
        form = ArticleForm(request.POST, instance=article)
        if form.is_valid():
            article.save()
            return HttpResponseRedirect('/blog/')
    else:
        form = ArticleForm(instance=article)
    return render(request, 'blog/update.html', {'form': form, "error": form.errors})
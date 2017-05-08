from django.db import models

# Create your models here.


class Article(models.Model):
    title = models.CharField(max_length=32, default='title')
    content = models.TextField(null=True)
    pub_time = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title
一个简单的博客项目，可以进行文章浏览、发布、编辑操作

基于Django+MySQL技术

一、如何配置MySQL

1、在setting.py中配置DATABASES参数(我的MySQL登录和密码都为root)

DATABASES = {

	'default': {
	
	    'ENGINE': 'django.db.backends.mysql',
	    
	    'NAME': 'blog',
	    
	    'USER': 'root',
	    
	    'PASSWORD': 'root',
	    
            'HOST': '127.0.0.1',
	    
            'PORT': '3306'
        }
}

2、需要安装python的mysql插件

#python2.7：  

sudo pip install MySQLdb  

#python3.4:  

sudo pip install PyMySQL

pip install mysqlclient

二、编写数据库Model

class Article(models.Model):

    title = models.CharField(max_length=32, default='title')
    
    content = models.TextField(null=True)
    
    pub_time = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

三、数据库的迁移(注意：数据库blog需要手动生成,否则会迁移失败)

python manage.py makemigrations

python manage.py migrate

执行成功之后，就可以在数据库blog中查看到迁移生成的数据表

当然，你也可以直接使用blog/static/blog_article.sql在MySQL管理工具中导入

四、针对Admin的管理做了进一步的优化

class ArticleAdmin(admin.ModelAdmin):

	list_display = ('title', 'content', 'pub_time',)
	
	 # 过滤器
	list_filter = ('pub_time',)


	admin.site.register(models.Article, ArticleAdmin)


五、启动

python manage.py runserver

blog访问链接:127.0.0.1/blog

首页：

![首页](https://github.com/Justshunjian/simpleblog/blog/static/imgages/index.png)

文章添加页面：

![文章添加页面](https://github.com/Justshunjian/simpleblog/blog/static/imgages/add.png)

文章编辑页面：

![文章编辑页面](https://github.com/Justshunjian/simpleblog/blog/static/imgages/edit.png)

admin访问链接:127.0.0.1/admin

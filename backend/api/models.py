from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Query(models.Model):
    date = models.DateTimeField(auto_now_add=True)
    source_address = models.TextField()
    source_location_lat = models.FloatField()
    source_location_long = models.FloatField()
    dest_address = models.TextField()
    dest_location_lat = models.FloatField()
    dest_location_long = models.FloatField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)

class Answer(models.Model):
    date = models.DateTimeField(auto_now_add=True)
    direction = models.TextField()
    upvotes = models.IntegerField()
    downvotes = models.IntegerField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    query = models.ForeignKey(Query, on_delete=models.CASCADE)

class Comment(models.Model):
    date = models.DateTimeField(auto_now_add=True)
    comment_text = models.TextField()
    upvotes = models.IntegerField()
    downvotes = models.IntegerField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    answer = models.ForeignKey(Answer, on_delete=models.CASCADE)

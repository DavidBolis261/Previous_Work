from flask import *
import json
import uuid
import random

app = Flask(__name__)

Articles = [
    {'id': "0", "title": "my 0 title", "date": "2016-09-22", "body": "Some Text", "tags": ["Health", "Fitness"]},
    {'id': "1", "title": "my 1 title", "date": "2016-09-22", "body": "Some Text", "tags": ["Sport", "Health"]},
    {'id': "2", "title": "my 2 title", "date": "2016-09-22", "body": "Some Text",
     "tags": ["Computers", "Fitness", "Tech"]}]

TempArticles = []
TempArticlesIDS = []
TempTags = []


@app.route('/', methods=['GET'])
def home_page():
    welcomeMessage = {'Page': 'Home', 'Message': 'This is the home page of the API'}
    return welcomeMessage


@app.route('/articlesall', methods=['GET'])
def returnArticles():
    return jsonify(Articles)


@app.route('/articles/<string:id>', methods=['GET'])
def returnMatched(id):
    matchedArticle = [article for article in Articles if article['id'] == id]
    return jsonify(matchedArticle)


@app.route('/articles', methods=['POST'])
def addArticles():
    newID = request.json['id']
    existingArticle = [article for article in Articles if article['id'] == newID]
    if existingArticle.__len__() != 0:
        newID += "-" + str(random.randint(0, 100))
    articleToAdd = {'id': newID, "title": request.json['title'], "date": request.json['date'],
                    "body": request.json['body'], "tags": request.json['tags']}
    Articles.append(articleToAdd)
    return jsonify(Articles)


if __name__ == '__main__':
    app.run()

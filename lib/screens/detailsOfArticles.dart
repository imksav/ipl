import 'package:app1/articles_model.dart';
import 'package:flutter/material.dart';

class DetailsOfArticles extends StatelessWidget {
  ArticlesModel selectedArticle;

  DetailsOfArticles(ArticlesModel articlesModel) {
    selectedArticle = articlesModel;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(selectedArticle.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              selectedArticle.details,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
    );
  }
}

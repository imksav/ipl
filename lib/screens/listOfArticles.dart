import 'package:app1/articles_model.dart';
import 'package:app1/screens/detailsOfArticles.dart';
import 'package:flutter/material.dart';

class ListOfArticles extends StatelessWidget {
  List<ArticlesModel> _list;
  ListOfArticles(List<ArticlesModel> articles) {
    _list = articles;
  }
  final captain = [
    "Rohit Sharma",
    "Mahendra Singh Dhoni",
    "Sunil Naraine",
    "David Warner",
    "Steven Smith",
    "Shreyas Iyer",
    "Ravichandran Aswin",
    "Virat Kholi",
  ];
  final teamIcons = [
    "assets/teams_logo/ipl0.png",
    "assets/teams_logo/ipl1.png",
    "assets/teams_logo/ipl2.png",
    "assets/teams_logo/ipl3.png",
    "assets/teams_logo/ipl4.png",
    "assets/teams_logo/ipl5.png",
    "assets/teams_logo/ipl6.png",
    "assets/teams_logo/ipl7.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indian Premier League - IPL"),
        backgroundColor: Colors.red,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(teamIcons[index]),
              backgroundColor: Colors.white,
              radius: 20.0,
            ),
            title: Text(
              _list[index].title,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              captain[index],
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsOfArticles(_list[index]);
                }),
              );
            },
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: _list.length,
      ),
    );
  }
}

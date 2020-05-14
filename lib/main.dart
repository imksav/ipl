import 'package:app1/screens/listOfArticles.dart';
import 'package:flutter/material.dart';

import 'articles_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<ArticlesModel> articles = [
    ArticlesModel("Mumbai Indians",
        "The Mumbai Indians are a franchise cricket team based in the city of Mumbai, Maharashtra, that play in the Indian Premier League. Founded in 2008, the team is owned by India's biggest conglomerate, Reliance Industries, through its 100% subsidiary IndiaWin Sports."),
    ArticlesModel("Chennai Super Kings",
        "The Chennai Super Kings are a franchise cricket team based in Chennai, Tamil Nadu, which plays in the Indian Premier League. Founded in 2008, the team plays its home matches at the M. A. Chidambaram Stadium in Chennai."),
    ArticlesModel("Kolkata Knight Riders",
        "The Kolkata Knight Riders are a franchise cricket team representing the city of Kolkata in the Indian Premier League. The franchise is owned by Bollywood actor Shah Rukh Khan, actress Juhi Chawla and her spouse Jay Mehta. The home of the Knight Riders is the iconic Eden Gardens stadium."),
    ArticlesModel("SunRisers Hyderabad",
        "The SunRisers Hyderabad are a franchise cricket team based in Hyderabad, Telangana, India, that plays in the Indian Premier League. The franchise is owned by Kalanithi Maran of the Sun TV Network and was founded in 2012 after the Hyderabad-based Deccan Chargers were terminated by the IPL."),
    ArticlesModel("Rajasthan Royals",
        "The Rajasthan Royals are a franchise cricket team based in Jaipur, Rajasthan, that plays in the Indian Premier League. Founded in 2008 as one of the initial eight IPL franchises, the team is based at the Sawai Mansingh Stadium in Jaipur. The Rajasthan Royals are sometimes considered as the 'moneyball' team of the IPL."),
    ArticlesModel("Delhi Capitals",
        "The Delhi Capitals are a franchise cricket team that represents the city of Delhi in the Indian Premier League. Founded in 2008 as the Delhi Daredevils, the franchise is jointly owned by the GMR Group and the JSW Group. The team's home ground is Arun Jaitley Stadium, located in New Delhi."),
    ArticlesModel("Kings 11 Punjab",
        "The Kings 11 Punjab are a franchise cricket team based in Mohali, Punjab, that plays in the Indian Premier League. Established in 2008, the franchise is jointly owned by Mohit Burman, Ness Wadia, Preity Zinta and Karan Paul. The team plays its home matches at the PCA Stadium, Mohali. "),
    ArticlesModel("Royal Challengers Bangalore",
        "The Royal Challengers Bangalore are a franchise cricket team based in Bangalore, Karnataka, that plays in the Indian Premier League. It was founded in 2008 by United Spirits and named after the company's liquor brand Royal Challenge."),
  ];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IPL",
      theme: ThemeData(primarySwatch: Colors.red),
      home: new ListOfArticles(articles),
    );
  }
}

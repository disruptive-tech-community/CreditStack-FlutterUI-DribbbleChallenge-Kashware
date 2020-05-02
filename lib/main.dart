import 'package:dribbble_design_challenge_credit_card_kashware/pages/cards_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xff1B3171),
          accentColor: Colors.white,
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: CardsPage(),
    );
  }
}

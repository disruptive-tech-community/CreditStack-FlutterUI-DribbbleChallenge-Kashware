import 'package:dribbble_design_challenge_credit_card_kashware/pages/cards_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
          primaryColor: Color(0xff1B3171),
          accentColor: Colors.white,
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      //     .copyWith(
      //   pageTransitionsTheme: const PageTransitionsTheme(
      //     builders: <TargetPlatform, PageTransitionsBuilder>{
      //       TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      //     },
      //   ),
      // ),
      home: CardsPage(),
    );
  }
}

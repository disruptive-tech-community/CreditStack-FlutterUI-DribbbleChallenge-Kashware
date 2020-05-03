import 'package:animated_rotation/animated_rotation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CardDetailsScreen extends StatefulWidget {
  final index;
  const CardDetailsScreen({Key key, this.index}) : super(key: key);
  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.attach_money),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.line_weight),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text('Kashware'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor,
              Color(0xff08153F),
            ],
          ),
        ),
        child: Hero(
          // createRectTween: ,
          flightShuttleBuilder: (
            BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext,
          ) {
            return RotationTransition(
              turns: animation,
              child: Container(
                // padding: const EdgeInsets.all(8.0),
                // color: const Color(0xFFE8581C),
                child: toHeroContext.widget,
              ),
            );
            // return Transform.rotate(
            //   angle: math.pi / 2 * animation.value,
            //   // -math.pi / animation.value,
            //   child: Container(
            //     padding: const EdgeInsets.all(8.0),
            //     color: const Color(0xFFE8581C),
            //     child: toHeroContext.widget,
            //   ),
            // );
            // return AnimatedRotation(
            //   angle: math.pi / 2 * animation.value,
            //   duration: Duration(seconds: 3),
            //   child: Container(
            //     // padding: const EdgeInsets.all(8.0),
            //     // color: const Color(0xFFE8581C),
            //     child: toHeroContext.widget,
            //   ),
            // );
            // return FadeTransition(

            //   opacity: animation.drive(
            //     Tween<double>(begin: 0.0, end: 1.0).chain(
            //       CurveTween(
            //         curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
            //       ),
            //     ),
            //   ),
            //   child: toHeroContext.widget,
            //   // Container(
            //   //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            //   //   child: RotatedBox(
            //   //     quarterTurns: 1,
            //   //     child: ClipRRect(
            //   //       borderRadius: BorderRadius.circular(15),
            //   //       child: Container(
            //   //         height: 250,
            //   //         width: 372,
            //   //         child: Stack(
            //   //           children: [
            //   //             Image.asset(
            //   //               'assets/images/Card2.png',
            //   //             ),
            //   //             // Center(child: Text('PNB')),
            //   //           ],
            //   //         ),
            //   //       ),
            //   //     ),
            //   //   ),
            //   // ),
            // );
            // return DestinationTitle(
            //   title: destination.title,
            //   isOverflow: true,
            //   viewState: flightDirection == HeroFlightDirection.push
            //       ? ViewState.enlarge
            //       : ViewState.shrink,
            //   smallFontSize: 15.0,
            //   largeFontSize: 48.0,
            // );
          },
          tag: '1',
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: RotatedBox(
              quarterTurns: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 250,
                  width: 372,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Card2.png',
                      ),
                      // Center(child: Text('PNB')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

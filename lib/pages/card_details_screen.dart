import 'package:animated_rotation/animated_rotation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CardDetailsScreen extends StatefulWidget {
  final index;
  const CardDetailsScreen({Key key, this.index}) : super(key: key);
  @override
  _CardDetailsScreenState createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    int index = widget.index;
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
        // title: Text('Kashware'),
      ),
      body: Stack(
        children: [
          Container(
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
            // child: Hero(
            //   // createRectTween: ,
            //   flightShuttleBuilder: (
            //     BuildContext flightContext,
            //     Animation<double> animation,
            //     HeroFlightDirection flightDirection,
            //     BuildContext fromHeroContext,
            //     BuildContext toHeroContext,
            //   ) {
            //     return
            //     // ScaleTransition(
            //     //   scale: Tween<double>(
            //     //     begin: 0.0,
            //     //     end: 1.0,
            //     //   ).animate(
            //     //     CurvedAnimation(
            //     //       parent: animation,
            //     //       curve: Curves.fastOutSlowIn,
            //     //     ),
            //     //   ),
            //     //   child: toHeroContext.widget,
            //     // );
            //     RotationTransition(
            //       // turns:
            //       // animation,
            //       turns: Tween(begin: 0.0, end: 1.0).animate(animation),
            //       child: Container(
            //         // padding: const EdgeInsets.all(8.0),
            //         // color: const Color(0xFFE8581C),
            //         child: toHeroContext.widget,
            //       ),
            //     );
            //     // return Transform.rotate(
            //     //   angle: math.pi / 2,
            //     //   // * animation.value,
            //     //   // -math.pi / animation.value,
            //     //   child: Container(
            //     //     child: toHeroContext.widget,
            //     //   ),
            //     // );
            //     // return AnimatedRotation(
            //     //   angle: math.pi / 2 * animation.value,
            //     //   duration: Duration(milliseconds: 500),
            //     //   child: Container(
            //     //     // padding: const EdgeInsets.all(8.0),
            //     //     // color: const Color(0xFFE8581C),
            //     //     child: toHeroContext.widget,
            //     //   ),
            //     // );
            //     // return FadeTransition(

            //     //   opacity: animation.drive(
            //     //     Tween<double>(begin: 0.0, end: 1.0).chain(
            //     //       CurveTween(
            //     //         curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
            //     //       ),
            //     //     ),
            //     //   ),
            //     //   child: toHeroContext.widget,
            //     //   // Container(
            //     //   //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            //     //   //   child: RotatedBox(
            //     //   //     quarterTurns: 1,
            //     //   //     child: ClipRRect(
            //     //   //       borderRadius: BorderRadius.circular(15),
            //     //   //       child: Container(
            //     //   //         height: 250,
            //     //   //         width: 372,
            //     //   //         child: Stack(
            //     //   //           children: [
            //     //   //             Image.asset(
            //     //   //               'assets/images/Card2.png',
            //     //   //             ),
            //     //   //             // Center(child: Text('PNB')),
            //     //   //           ],
            //     //   //         ),
            //     //   //       ),
            //     //   //     ),
            //     //   //   ),
            //     //   // ),
            //     // );
            //     // return DestinationTitle(
            //     //   title: destination.title,
            //     //   isOverflow: true,
            //     //   viewState: flightDirection == HeroFlightDirection.push
            //     //       ? ViewState.enlarge
            //     //       : ViewState.shrink,
            //     //   smallFontSize: 15.0,
            //     //   largeFontSize: 48.0,
            //     // );
            //   },
            //   tag: '1',
            // child: Hero(
            //   flightShuttleBuilder: (
            //     BuildContext flightContext,
            //     Animation<double> animation,
            //     HeroFlightDirection flightDirection,
            //     BuildContext fromHeroContext,
            //     BuildContext toHeroContext,
            //   ) {
            //     return AnimatedBuilder(
            //       animation: animationController,
            //       builder: (BuildContext context, Widget _widget) {
            //         return new Transform.rotate(
            //           angle: animationController.value * math.pi / 2,
            //           child: _widget,
            //         );
            //       },
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(15),
            //         child: Container(
            //           height: 250,
            //           width: 372,
            //           child: Image.asset(
            //             (widget.index == 1 || widget.index == 3)
            //                 ? 'assets/images/Card2.png'
            //                 : 'assets/images/Card1.png',
            //           ),
            //         ),
            //       ),
            //     );
            //     // ScaleTransition(
            //     //   scale: Tween<double>(
            //     //     begin: 0.0,
            //     //     end: 1.0,
            //     //   ).animate(
            //     //     CurvedAnimation(
            //     //       parent: animation,
            //     //       curve: Curves.fastOutSlowIn,
            //     //     ),
            //     //   ),
            //     //   child: toHeroContext.widget,
            //     // );
            //   },
            //   transitionOnUserGestures: true,
            //   tag: '${widget.index}',
            // child:
            // Container(
            //   height: 200,
            //   width: 200,
            //   child: Hero(
            //     tag: '${widget.index}',
            //     child: Transform.rotate(
            //       angle: math.pi / 2,
            //       child: Image.asset(
            //         'assets/images/Card1.png',
            //       ),
            //     ),
            // child: AnimatedBuilder(
            //   animation:
            //       // animation,
            //       animationController,
            //   builder: (BuildContext context, Widget _widget) {
            //     return new Transform.rotate(
            //       angle: animationController.value * math.pi / 2,
            //       child: Container(
            //         // height: 400,
            //         // width: 518,
            //         child: Image.asset(
            //           (widget.index == 1 || widget.index == 3)
            //               ? 'assets/images/Card2.png'
            //               : 'assets/images/Card1.png',
            //         ),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(15),
            //           // image: DecorationImage(
            //           //   image: AssetImage(
            //           //     (widget.index == 1 || widget.index == 3)
            //           //         ? 'assets/images/Card2.png'
            //           //         : 'assets/images/Card1.png',
            //           //   ),
            //           // ),
            //         ),

            //         // child: Image.asset(
            //         //   (widget.index == 1 || widget.index == 3)
            //         //       ? 'assets/images/Card2.png'
            //         //       : 'assets/images/Card1.png',
            //         // ),
            //       ),
            //     );
            //   },
            // ),
            //   ),
            // ),
            // ),
            // ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 350,
              width: 350,
              child: Hero(
                tag: '${widget.index}',
                child: Transform.rotate(
                  angle: math.pi * 3 / 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      (widget.index == 0 || widget.index == 2)
                          ? 'assets/images/Card1.png'
                          : 'assets/images/Card2.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

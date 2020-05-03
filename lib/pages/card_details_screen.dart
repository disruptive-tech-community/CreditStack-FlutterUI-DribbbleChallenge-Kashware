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
  bool hide = true;

  @override
  void initState() {
    // bool hidee = hide;
    super.initState();

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

  Widget flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }

  List<Widget> cards = [
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/paytm.png',
                  height: 60,
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 105,
              left: -10,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '****  ****  ****  ****',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card2.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 30,
              left: 5,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/sbi.png',
                  height: 30,
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 105,
              left: -10,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '****  ****  ****  ****',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            // Image.asset('assets/images/banks/axis.png'),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 55,
              left: -25,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/axis.png',
                  color: Colors.white,
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 105,
              left: -10,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '****  ****  ****  ****',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card2.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 70,
              left: -40,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/icici.png',
                  color: Colors.white,
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 105,
              left: -10,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '****  ****  ****  ****',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
  ];

  List<Widget> cardsinfo = [
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/paytm.png',
                  height: 60,
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 84,
              left: 0,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1234  5678  2378  8547',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 62,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card2.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 30,
              left: 5,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/sbi.png',
                  height: 30,
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 84,
              left: 0,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1234  5678  2378  8547',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 62,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            // Image.asset('assets/images/banks/axis.png'),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card1.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 55,
              left: -25,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/axis.png',
                  color: Colors.white,
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Positioned(
              bottom: 84,
              left: 0,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1234  5678  2378  8547',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 62,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
    Container(
      // padding: EdgeInsets.all(10),
      // color: Colors.grey,
      // child: Hero(
      //   tag: '$index',
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/Card2.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 70,
              left: -40,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Image.asset(
                  'assets/images/banks/icici.png',
                  color: Colors.white,
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 84,
              left: 0,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '1234  5678  2378  8547',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 62,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Card Holder Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Expiry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gaurav Dhingra',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          ' 09/22',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.work),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.insert_chart),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.index == 0
                    ? '₹ 9, 170'
                    : widget.index == 1
                        ? '₹ 17, 220'
                        : widget.index == 2 ? '₹ 89, 054' : '₹ 2, 54, 170',
                style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.white,
                      fontSize: 27,
                    ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // height: 350,
              width: 220,
              child: Hero(
                flightShuttleBuilder: flightShuttleBuilder,
                tag: '${widget.index}',
                child: Transform.rotate(
                  angle: math.pi / 2,
                  child: GestureDetector(
                    child: hide ? cards[widget.index] : cardsinfo[widget.index],
                    onTap: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
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

import 'package:dribbble_design_challenge_credit_card_kashware/faded_page_route.dart';
import 'package:dribbble_design_challenge_credit_card_kashware/pages/card_details_screen.dart';
import 'package:dribbble_design_challenge_credit_card_kashware/widgets/home_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:page_transition/page_transition.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage>
    with SingleTickerProviderStateMixin {
  bool cardchange = false;
  int currentIndex = 0;
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );

    animationController.forward();
    super.initState();
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
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: Text(
                  'Credit Card',
                  style:
                      Theme.of(context).textTheme.title.copyWith(fontSize: 30),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 7,
                // width: MediaQuery.of(context).size.width / 1.2,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      HomeRowWidget(
                        title: 'Wallet',
                        subtitle: 'Manage wallet like a Pro',
                        icon: Icons.account_balance_wallet,
                      ),
                      HomeRowWidget(
                        title: 'OnePay',
                        subtitle: 'Invest in your future',
                        icon: Icons.account_balance_wallet,
                      ),
                      HomeRowWidget(
                        title: 'Securities',
                        subtitle: 'Track your Investments',
                        icon: Icons.account_balance_wallet,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                // height: 520,
                // padding: EdgeInsets.symmetric(vertical: 20),

                // child: Hero(
                //   tag: '1',
                child: Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                          startIndex: -1, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                    currentIndex == 0
                        ? Offset(-480.0, -35.0)
                        : Offset(-280.0, -35.0),
                    new Offset(0.0, 0.0),
                    currentIndex == 3
                        ? Offset(480.0, -35.0)
                        : Offset(280.0, -35)
                  ]),
                  itemWidth: 220.0,
                  itemHeight: 370.0,
                  // curve: Curves.easeInOutExpo,
                  itemBuilder: (context, index) {
                    return new Container(
                      padding: EdgeInsets.all(10),
                      // color: Colors.grey,
                      // child: Hero(
                      //   tag: '$index',
                      child: Hero(
                        tag: '$index',
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              (index == 0 || index == 2)
                                  ? 'assets/images/Card1.png'
                                  : 'assets/images/Card2.png',
                            ),
                          ),
                        ),
                      ),
                      // ),
                    );
                  },
                  // outer: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  loop: false,
                  // fade: 200,
                  pagination: SwiperPagination(
                    // margin: EdgeInsets.all(30),
                    margin: EdgeInsets.only(top: 440),
                    alignment: Alignment.center,
                  ),
                  // physics: BouncingScrollPhysics(),
                  // index: 0,
                  onIndexChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  onTap: (index) => Navigator.push(
                      context,
                      FadePageRoute(
                        builder: (context) => CardDetailsScreen(
                          index: index,
                        ),
                      )
                      // PageTransition(
                      //     child: CardDetailsScreen(),
                      //     type: PageTransitionType.fade,
                      //     duration: Duration(milliseconds: 1000)
                      //     )
                      // MaterialPageRoute(
                      //   builder: (context) => CardDetailsScreen(
                      //     index: index,
                      //   ),
                      // ),
                      ),
                ),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

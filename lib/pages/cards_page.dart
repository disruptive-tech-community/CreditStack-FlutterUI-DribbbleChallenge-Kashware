import 'package:dribbble_design_challenge_credit_card_kashware/widgets/home_row_widget.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
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
                Color(0xff0E1F53),
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
                )
              ],
            ),
          )),
    );
  }
}

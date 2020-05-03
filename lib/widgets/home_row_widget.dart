import 'package:flutter/material.dart';

class HomeRowWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  final IconData icon;

  const HomeRowWidget({Key key, this.title, this.subtitle, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Icon(
                icon,
                color: title == 'OnePay'
                    ? Colors.white
                    : Colors.white.withAlpha(100),
                size: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              subtitle,
              style:
                  TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 17),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

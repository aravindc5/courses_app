import 'package:flutter/material.dart';

class WebNavBar extends StatelessWidget {
  const WebNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hoo',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          Row(
            children: [
              NavBarItemWidget(text: "Profile"),
              SizedBox(width: 30),
              NavBarItemWidget(text: "Courses"),
              SizedBox(width: 30),
              NavBarItemWidget(text: "Calendar"),
              SizedBox(width: 30),
              NavBarItemWidget(text: "Tasks"),
              SizedBox(width: 30),
              NavBarItemWidget(text: "Achievements"),
            ],
          )
        ],
      ),
    );
  }
}

class NavBarItemWidget extends StatelessWidget {
  final String text;

  NavBarItemWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          letterSpacing: 2),
    );
  }
}

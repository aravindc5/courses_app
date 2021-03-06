import 'package:flutter/material.dart';

class SideNavItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  SideNavItemWidget({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey[800],
      ),
      title: Text(
        text,
        style: TextStyle(
            color: Colors.grey[800], fontWeight: FontWeight.w500, fontSize: 15),
      ),
    );
  }
}

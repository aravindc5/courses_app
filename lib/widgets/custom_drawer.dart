import 'package:courses_app/widgets/side_nav_item_widget.dart';
import 'package:flutter/material.dart';

Drawer customDrawer() => Drawer(
        child: Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
      child: ListView(children: <Widget>[
        SideNavItemWidget(text: "Profile", icon: Icons.supervised_user_circle),
        SideNavItemWidget(text: "Courses", icon: Icons.school),
        SideNavItemWidget(text: "Calendar", icon: Icons.calendar_today),
        SideNavItemWidget(text: "Tasks", icon: Icons.note),
        SideNavItemWidget(text: "Assignment", icon: Icons.book),
      ]),
    ));

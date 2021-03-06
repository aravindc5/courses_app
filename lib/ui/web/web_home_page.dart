import 'package:courses_app/widgets/common/card_widget.dart';
import 'package:courses_app/widgets/common/dashboard_widget.dart';
import 'package:courses_app/widgets/web_widgets/nav_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../course_detail_page.dart';

class WebHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            color: Colors.white,
            child: WebNavBar(),
          ),
          DashboardWidget(),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
            child: Text(
              'Other Courses',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CourseDetailPage())),
                    child: CourseCardWidget(),
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CourseCardWidget();
                }),
          )
        ],
      ),
    );
  }
}

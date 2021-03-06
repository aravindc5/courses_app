import 'package:courses_app/widgets/common/card_widget.dart';
import 'package:courses_app/widgets/common/dashboard_widget.dart';
import 'package:courses_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'course_detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Hoo',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: customDrawer(),
      body: Column(
        children: [
          DashboardWidget(),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CourseDetailPage())),
                      child: CourseCardWidget());
                }),
          ),
        ],
      ),
    );
  }
}

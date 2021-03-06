import 'package:courses_app/widgets/common/course_page.dart';
import 'package:courses_app/widgets/responsive_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'course_plan_details.dart';

class CourseDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ResponsiveWidget(
      web: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: CourseContainer()),
              SizedBox(
                width: 30,
              ),
              Expanded(
                //width: screenWidth * 0.4,
                child: CoursePlanDetails(),
              )
            ],
          )),
      mobile: Scaffold(
        body: CourseMobileContainer(),
      ),
    );
  }
}

import 'package:courses_app/widgets/common/course_duration_widget.dart';
import 'package:courses_app/widgets/common/user_circle.dart';
import 'package:courses_app/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'course_detail_page.dart';

class CoursePlanDetails extends StatelessWidget {
  const CoursePlanDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Scaffold(
        body: CoursePlanMobile(),
      ),
      web: CourseDetailPage(),
    );
  }
}

class CoursePlanMobile extends StatelessWidget {
  const CoursePlanMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Course Details',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          CourseDurationWidget(
            data: Icons.calendar_today,
            colors: Colors.blue,
            text1: "July 24th 2021",
            text2: "09:00 - 10:00",
          ),
          CourseDurationWidget(
            data: Icons.add_location_rounded,
            colors: Colors.red,
            text1: "Location",
            text2: "Google Meet",
          ),
          CourseDurationWidget(
            data: Icons.video_call,
            colors: Colors.green,
            text1: "Type",
            text2: "Video Call",
          ),
          ResponsiveWidget(
            web: UserAvatarWidget(hSize: h * 0.1, wSize: w * 0.2),
            mobile: UserAvatarWidget(
              hSize: h * 0.1,
              wSize: w,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Grammar Books',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.cloud_download,
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonTheme(
                minWidth: 150,
                height: 50,
                child: RaisedButton(
                  disabledColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.red,
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text("Join", style: TextStyle(fontSize: 14)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class UserAvatarWidget extends StatelessWidget {
  final double hSize;
  final double wSize;

  UserAvatarWidget({this.hSize, this.wSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Text(
                'Users enrolled :',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Text(
                '115',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ],
        ),
        Container(
          height: hSize,
          width: wSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserCircleWidget(),
              UserCircleWidget(),
              UserCircleWidget(),
              UserCircleWidget(),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    '+114',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Function onClickFunc;

  CustomButton({this.text, this.onClickFunc});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 150,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red)),
        color: Colors.red,
        textColor: Colors.white,
        onPressed: onClickFunc,
        child: Text(text.toUpperCase(), style: TextStyle(fontSize: 14)),
      ),
    );
  }
}

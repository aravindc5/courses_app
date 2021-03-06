import 'package:courses_app/ui/course_plan_details.dart';
import 'package:courses_app/widgets/common/plan_card_widget.dart';
import 'package:flutter/material.dart';

class CoursePlanWidget extends StatelessWidget {
  const CoursePlanWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth > 768
            ? MediaQuery.of(context).size.width * 0.4
            : MediaQuery.of(context).size.width,
        color: Colors.white,
        child: screenWidth > 768 ? CourseContainer() : CourseMobileContainer());
  }
}

class CourseMobileContainer extends StatelessWidget {
  const CourseMobileContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wSize = MediaQuery.of(context).size.width;
    double hSize = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 40,
              width: 40,
              child: Image(image: AssetImage('assets/cam.png'))),
          Text(
            'Film Making',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          Text(
            'Training program, work on the script, \n work with the artist and actors,\n complete the directors portfolio',
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
                fontWeight: FontWeight.w300,
                letterSpacing: 2),
          ),
          Container(
            height: hSize * 0.6,
            width: wSize * 0.8,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: PlansCardWidget(
                        index: index,
                      ));
                }),
          ),
          CustomButton(
            text: "Next",
            onClickFunc: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CoursePlanDetails())),
          ),
        ],
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  const CourseContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wSize = MediaQuery.of(context).size.width;
    double hSize = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            height: 40,
            width: 40,
            child: Image(image: AssetImage('assets/cam.png'))),
        Text(
          'Film Making',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        Text(
          'Training program, work on the script, \n work with the artist and actors,\n complete the directors portfolio',
          style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
              fontWeight: FontWeight.w300,
              letterSpacing: 2),
        ),
        Container(
          height: 400,
          width: 500,
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: PlansCardWidget(
                      index: index,
                    ));
              }),
        )
      ],
    );
  }
}

import 'package:courses_app/data/const.dart';
import 'package:flutter/material.dart';

class PlansCardWidget extends StatelessWidget {
  final int index;

  PlansCardWidget({this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ClipPath(
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.green, width: 5))),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        coursePlan[index].toString(),
                        style: TextStyle(
                            color: Colors.grey[700],
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('9:00 - 10:00')
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
        clipper: ShapeBorderClipper(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
      ),
    );
  }
}

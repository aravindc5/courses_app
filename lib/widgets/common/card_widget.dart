import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCardWidget extends StatelessWidget {
  const CourseCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        border: Border.all(color: Colors.black, width: 1.5),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      height: 150,
      width: 300,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Photography',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Levels - 5'),
            ],
          ),
          Container(
              height: 40,
              width: 40,
              child: Image(image: AssetImage('assets/cam.png')))
        ],
      )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDurationWidget extends StatelessWidget {
  final IconData data;
  final String text1;
  final String text2;
  final Color colors;

  CourseDurationWidget({this.data, this.text1, this.text2, this.colors});

  @override
  Widget build(BuildContext context) {
    double wSize = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          width: 400,
          height: 90,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  data,
                  color: colors,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                          color: colors,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

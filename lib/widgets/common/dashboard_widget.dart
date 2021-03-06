import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenWidth > 768 ? screenHeight * 0.4 : screenHeight * 0.5,
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "My Courses",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "Write your course name and password",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              width: screenWidth > 768 ? screenWidth * 0.3 : screenWidth * 0.6,
              child: Column(
                children: [
                  TextFieldWidget(text: "Course Name"),
                  SizedBox(height: 20),
                  TextFieldWidget(text: "Password"),
                  SizedBox(height: 20),
                  ButtonTheme(
                    minWidth: 200,
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Text("Submit".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String text;

  TextFieldWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[800],
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      hintText: text,
    ));
  }
}

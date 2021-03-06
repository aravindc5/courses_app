import 'package:courses_app/ui/home_page.dart';
import 'package:courses_app/ui/web/web_home_page.dart';
import 'package:courses_app/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveWidget(
        mobile: HomePage(),
        web: WebHomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

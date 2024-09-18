import 'package:flutter/material.dart';
import 'screens/course_details_screen.dart';
import 'screens/popular_course_screen.dart';

void main() {
  runApp(OnlineCourseApp());
}

class OnlineCourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Course App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16.0),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
      ),
      home: CourseDetailsScreen(),
    );
  }
}

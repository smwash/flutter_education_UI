import 'package:flutter/material.dart';

import '../constants.dart';

class CourseStudyingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('images/studying.jfif'),
            ),
            Text(
              'No Courses',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  letterSpacing: 1.2),
            ),
            Text(
              'Choose a course from Courses tab or use the buttoon below to start',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.black54,
                  letterSpacing: 1.2),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: kPrimaryColor,
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 10.0),
                ],
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

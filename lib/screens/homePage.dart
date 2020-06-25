import 'package:education_flutter/constants.dart';

import 'package:education_flutter/widgets/searchfield.dart';
import 'package:education_flutter/widgets/study_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.48,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      'images/hmpg hero.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                  Positioned(
                    left: 20.0,
                    right: 35.0,
                    bottom: 90.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Antonio',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              letterSpacing: 1.1),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'What would you like to learn today? Search below.',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            letterSpacing: 1.1,
                          ),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10.0,
                      left: 20.0,
                      right: 20.0,
                      child: SearchField()),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'STUDYING',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.1),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            StudyWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:education_flutter/constants.dart';
import 'package:education_flutter/model/study_model.dart';
import 'package:education_flutter/screens/study_pregress_page.dart';
import 'package:flutter/material.dart';

class StudyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: studies.length,
        itemBuilder: (context, index) {
          Study study = studies[index];
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                  right: 20.0, left: 10.0, top: 10.0, bottom: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 10),
                      blurRadius: 10.0),
                ],
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: MediaQuery.of(context).size.height * 0.38,
              width: MediaQuery.of(context).size.width * 0.63,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        study.imageUrl,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Positioned(
                    bottom: 60.0,
                    left: 12.0,
                    right: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          study.courseDesc,
                          style: TextStyle(
                              fontSize: 17.0,
                              color: kPrimaryColor,
                              fontFamily: 'Poppins',
                              letterSpacing: 1.1),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          study.coursename,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Positioned(
                    bottom: 20.0,
                    left: 13.0,
                    right: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          study.lesson,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black54,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.09,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(right: 14.0),
                            decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StudyPage(
                    studies: study,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

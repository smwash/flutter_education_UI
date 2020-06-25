import 'package:education_flutter/model/study_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomStudyContainer extends StatelessWidget {
  const BottomStudyContainer({
    Key key,
    @required this.studies,
  }) : super(key: key);

  final Study studies;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 10), blurRadius: 10.0),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: MediaQuery.of(context).size.height * 0.48,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
              child: Image.asset(
                studies.imageUrl,
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
                  studies.courseDesc,
                  style: TextStyle(
                      fontSize: 17.0,
                      color: kPrimaryColor,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.1),
                ),
                SizedBox(height: 15.0),
                Text(
                  studies.coursename,
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
                  studies.lesson,
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
    );
  }
}

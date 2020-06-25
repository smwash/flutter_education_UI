import 'package:education_flutter/constants.dart';
import 'package:education_flutter/model/study_model.dart';
import 'package:flutter/material.dart';

class TopStudyCont extends StatelessWidget {
  const TopStudyCont({
    Key key,
    @required this.studies,
  }) : super(key: key);

  final Study studies;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(0, 10), blurRadius: 12.0),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(3.5),
                decoration:
                    BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/transparent_book.png'),
                ),
              ),
              SizedBox(width: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quiz 1',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    studies.courseDesc,
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 25.0),
          Text(
            'Let\`s put your memory on our first topic to test. Start by reminding yourself previous lesson.',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                letterSpacing: 1.1),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 40.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: kPrimaryColor.withOpacity(0.8),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10.0),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BEGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                      fontSize: 20.0),
                ),
                SizedBox(width: 30.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
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

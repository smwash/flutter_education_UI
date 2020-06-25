import 'package:flutter/material.dart';

import '../constants.dart';

class PreogressStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 10),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: kPrimaryColor.withOpacity(0.4),
            ),
            title: Text(
              'Fundamentals of Art',
              style: TextStyle(
                  fontSize: 22.0,
                  color: kPrimaryColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: Icon(Icons.check, color: Colors.teal),
            title: Text(
              'What is Art?',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text('What does it mean?'),
          ),
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.teal),
            title: Text(
              'Different forms of Art',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text('What does it mean?'),
          ),
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.teal),
            title: Text(
              'Art Principles',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text('What are they important?'),
          ),
          ListTile(
            leading: Icon(Icons.check_circle, color: Colors.teal),
            title: Text(
              'Color Theory',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Understanding color'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BadgeTab extends StatelessWidget {
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
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/badge-1.png'),
                ),
                title: Text(
                  'Perfectionist',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Finish all lessons of a chapter'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/badge-2.png'),
                ),
                title: Text(
                  'Achiever',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Complete an exrecise'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/badge-3.png'),
                ),
                title: Text(
                  'Schholar',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Study two courses'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/badge-4.png'),
                ),
                title: Text(
                  'Champion',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Finish number 1 in the scoreboard'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/badge-5.png'),
                ),
                title: Text(
                  'Focused',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Study every day for 30 days'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/badge-4.png'),
                ),
                title: Text(
                  'Victor',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Be top five among your friends'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

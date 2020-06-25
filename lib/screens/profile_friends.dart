import 'package:flutter/material.dart';

class FriendsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
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
                  backgroundImage:
                      AssetImage('images/adult-beard-boy-casual.jpg'),
                ),
                title: Text(
                  'Jackson Mwaura',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('2,349 XP'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(
                      'images/close-up-photography-of-a-woman-near-wall-1065084.jpg'),
                ),
                title: Text(
                  'Cory Briggs',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: '2,168 XP',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('2,349 XP'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(
                      'images/photo-of-people-holding-each-other-s-hands-3184434.jpg'),
                ),
                title: Text(
                  'Raul Menendez',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('1,000 XP'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(
                      'images/photography-of-a-guy-wearing-green-shirt-1222271.jpg'),
                ),
                title: Text(
                  'Roman Torres',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('945 XP'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/smiley.jpg'),
                ),
                title: Text(
                  'Carl Wang',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('2,500 XP'),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(
                      'images/woman-in-black-scoop-neck-shirt-smiling-38554.jpg'),
                ),
                title: Text(
                  'Ruth Nelson',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('349 XP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

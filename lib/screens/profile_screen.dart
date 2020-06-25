import 'package:education_flutter/constants.dart';
import 'package:education_flutter/screens/profile_friends.dart';
import 'package:education_flutter/screens/profile_scores.dart';
import 'package:education_flutter/widgets/badge_tab.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.settings,
                color: Colors.black,
                size: 28.0,
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/profile pic.jpg')),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Caleb Mutua',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '134, 602 XP',
                  style: TextStyle(
                    fontSize: 23.0,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 10),
                      blurRadius: 10),
                ],
              ),
              child: TabBar(
                  labelStyle: TextStyle(
                      fontSize: 16.5,
                      fontFamily: 'Poppins',
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w700),
                  unselectedLabelColor: Colors.black54,
                  labelColor: Colors.black,
                  indicatorColor: kPrimaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'BADGES'),
                    Tab(text: 'FRIENDS'),
                    Tab(text: 'SCORES'),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  BadgeTab(),
                  FriendsTab(),
                  ScoresTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

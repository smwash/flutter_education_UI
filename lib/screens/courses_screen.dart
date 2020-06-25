import 'package:education_flutter/screens/saved_course.dart';
import 'package:education_flutter/widgets/tab_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'course_all_page.dart';
import 'course_studying.dart';

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0),
            ),
          ),
          bottom: TabBar(
              labelStyle: TextStyle(
                  fontSize: 16.5,
                  fontFamily: 'Poppins',
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.black54,
              labelColor: Colors.black,
              indicatorColor: kPrimaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              controller: _tabController,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'STUDYING'),
                Tab(text: 'SAVED'),
              ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            CourseAllPage(),
            CourseStudyingPage(),
            CourseSavedPage(),
          ],
        ),
      ),
    );
  }
}

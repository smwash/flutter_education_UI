import 'package:education_flutter/constants.dart';
import 'package:flutter/material.dart';

class TabContainer extends StatefulWidget {
  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
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
        ]);
  }
}

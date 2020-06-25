import 'package:education_flutter/model/study_model.dart';
import 'package:education_flutter/widgets/bottomStudyCont.dart';
import 'package:education_flutter/widgets/top_study_cont.dart';
import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  static String id = 'study_screen';
  final Study studies;
  StudyPage({this.studies});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            TopStudyCont(studies: studies),
            SizedBox(height: 30.0),
            BottomStudyContainer(studies: studies),
          ],
        ),
      ),
    );
  }
}

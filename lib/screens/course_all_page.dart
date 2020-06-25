import 'package:education_flutter/model/study_model.dart';
import 'package:education_flutter/widgets/progressStudy.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CourseAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
                child: ListView.builder(
                    // physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: studies.length,
                    itemBuilder: (context, index) {
                      Study study = studies[index];
                      return Container(
                        margin: EdgeInsets.only(
                            right: 10.0, left: 10.0, bottom: 10.0),
                        width: MediaQuery.of(context).size.width * 0.38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 10),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  study.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 22.0,
                              left: 15.0,
                              right: 15.0,
                              child: Text(
                                study.coursename,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              PreogressStudy(),
              PreogressStudy(),
              PreogressStudy(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(0, 5), blurRadius: 5.0),
        ],
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: 'Looking for..',
          border: InputBorder.none,
          suffixIcon: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 5),
                    blurRadius: 5.0),
              ],
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

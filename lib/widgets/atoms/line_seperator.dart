import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LineSeperator extends StatelessWidget {
  LineSeperator();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 2,
        color: Colors.grey.withOpacity(0.4),
        margin: EdgeInsets.symmetric(vertical: 10));
  }
}

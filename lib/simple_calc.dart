import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _MyHomePageState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.yellow,
        ),
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.green,
        ),
      ])),
    );
  }
}

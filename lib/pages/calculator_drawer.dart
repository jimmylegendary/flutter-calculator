import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.blue, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exposure),
            title: Text('기본 계산기'),
            tileColor:
                Get.currentRoute == '/simple_calc' ? Colors.grey[300] : null,
            onTap: () {
              Get.offAndToNamed('/simple_calc');
            },
          ),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text('공학용 계산기'),
            tileColor: Get.currentRoute == '/engineering_calc'
                ? Colors.grey[300]
                : null,
            onTap: () {
              Get.offAndToNamed('/engineering_calc');
            },
          ),
          ListTile(
            leading: Icon(Icons.holiday_village),
            title: Text('건축용 계산기'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorAppBar extends StatefulWidget implements PreferredSizeWidget {
  CalculatorAppBar(this.title)
      : preferredSize = Size.fromHeight(kToolbarHeight);

  final String title;

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CalculatorAppBarState createState() => _CalculatorAppBarState();
}

class _CalculatorAppBarState extends State<CalculatorAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Text(widget.title),
      actions: [
        Icon(Icons.favorite),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.search),
        ),
        Icon(Icons.more_vert),
      ],
      backgroundColor: Colors.blue,
    );
  }
}

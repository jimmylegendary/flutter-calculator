import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '계산기',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '계산기'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class NavDrawer extends StatelessWidget {
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
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text('공학용 계산기'),
            onTap: () => {Navigator.of(context).pop()},
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
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
      ),
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

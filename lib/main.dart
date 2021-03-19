import 'package:flutter/material.dart';
import 'package:news_project/page/listview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListViewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

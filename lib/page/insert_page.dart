import 'package:flutter/material.dart';
import 'package:news_project/model/article_model.dart';
import 'package:news_project/repos/my_localapi_repo.dart';

class InsertPage extends StatefulWidget{
  @override
  _InsertPageState createState() => _InsertPageState();
}
class _InsertPageState extends State<InsertPage> {
  Future<NewsModel> _articleData;
  List<Article> _article;

  @override
  void initState() {
    super.initState();
    _articleData = readData();
  }

  var _scaffoldKey = GlobalKey<ScaffoldState>();

  _showMessage(String text) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar,
    );
  }

  get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      leading: Icon(Icons.face),
    );
  }







}

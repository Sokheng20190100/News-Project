import 'package:flutter/material.dart';
import 'package:news_project/model/article_model.dart';
import 'package:news_project/repos/my_localapi_repo.dart';

class MyListViewPage extends StatefulWidget{
  @override
  _MyListViewPageState createState() => _MyListViewPageState();
}
class _MyListViewPageState extends State<MyListViewPage> {
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
      body: _buildBody,
    );
  }

  get _buildAppBar{
    return AppBar(
      title: Text("User Profile"),
      backgroundColor: Colors.black,
      centerTitle: true,
    );
  }

  get _buildBody{
    return Container(

    );
  }







}

import 'package:flutter/material.dart';
import 'package:news_project/model/article_model.dart';
import 'package:news_project/repos/my_localapi_repo.dart';

class UpdatePage extends StatefulWidget{
  @override
  _UpdatePageState createState() => _UpdatePageState();
}
class _UpdatePageState extends State<UpdatePage> {
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

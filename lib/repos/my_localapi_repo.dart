import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_project/model/article_model.dart';

const Android = "10.0.2.2";

Future<NewsModel> readData() async{

  String address = Android;

  String url = "http://$address/newsproject/read.php";

  http.Response response = await http.get(url);

  if(response.statusCode == 200){
    return compute(newsModelFromJson, response.body);
  }
  else
  {
    throw Exception("Error while reading data");
  }
}
Future<String> insertData(Article article) async{

  String address = Android;

  String url = "http://$address/newsproject/insert.php";
  http.Response response = await http.post(url, body: article.toJson());

  if(response.statusCode == 200){
    return response.body;
  }
  else
  {
    throw Exception("Error while reading data");
  }
}
Future<String> updateData(Article article) async{

  String address = Android;

  String url = "http://$address/newsproject/update.php";
  http.Response response = await http.post(url, body: article.toJson());

  if(response.statusCode == 200){
    return response.body;
  }
  else
  {
    throw Exception("Error while reading data");
  }
}
Future<String> deleteData(Article article) async{

  String address = Android;

  String url = "http://$address/newsproject/delete.php";
  http.Response response = await http.post(url, body: article.toJson());

  if(response.statusCode == 200){
    return response.body;
  }
  else
  {
    throw Exception("Error while reading data");
  }
}
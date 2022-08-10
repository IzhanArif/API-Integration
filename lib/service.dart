import 'dart:convert';
import 'package:api_integration/model.dart';
import 'package:http/http.dart' as http;

getUser() async {
  var userList = [];
  String url = 'https://jsonplaceholder.typicode.com/users';
  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body);
  for (var i in data) {
    userList.add(userModel.fromJson(i));
  }
  return userList;
}

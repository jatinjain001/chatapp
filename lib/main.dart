import 'package:chatapp/homepage.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Chat App",
      home: HomePage(),
      
    );
  }
}
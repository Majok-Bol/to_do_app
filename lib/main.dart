import 'package:flutter/material.dart';
import 'package:to_do_app/pages/to_do_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('To do App'),centerTitle: true,backgroundColor: Colors.blue.shade300,),
        body: TodoPage(),

      ),
    );
  }
}
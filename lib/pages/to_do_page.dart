import 'package:flutter/material.dart';
class TodoPage extends StatefulWidget{
  const TodoPage({super.key});
  @override
  TodoPageState createState()=>TodoPageState();
}
class TodoPageState extends State<TodoPage>{
  final TextEditingController _itemController=TextEditingController();
  //message
  String greetMessage="";

  void greetUser(){
    String userName=_itemController.text;
    setState(() {

      greetMessage="Hello, $userName";
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:Padding(
          padding: EdgeInsets.all(25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller:_itemController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type your name...'

              ),
            ),
            Text(greetMessage),
            SizedBox(height: 20,),
            SizedBox(child: ElevatedButton(onPressed: greetUser,style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300), child: Text('Add')),)

    ],),
      ),
      ),
    );
  }

}
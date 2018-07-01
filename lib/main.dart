 import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home : new myApp(),
  ));
}
class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  String _text = "";
  TextEditingController controller=new TextEditingController();
  void add()
  {

    setState(() {
      _text = controller.text;
    });
  }
  void onChanged1(String value)
  {
    
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My First Flutter App"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value){onChanged(value);},
                controller: controller,
              ),
              new RaisedButton(
                child: new Text("Add"),
                  color: Colors.blue,
                  onPressed: (){
                  add();
                  }),
              new Text(
                "$_text"
              )
            ],
          ),
        ),
      ),
    );
  }
}

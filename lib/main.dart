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
  String _text1 = "";
  String _text2 = "";
  TextEditingController controller1=new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  void add()
  {
    setState(() {
      var myInt = int.parse(_text1);
      assert(myInt is int);
      var myInt2 = int.parse(_text2);
      assert(myInt2 is int);
      int a = myInt+myInt2;
      _text = "" + a.toString();
    });

  }
  void sub()
  {
    setState(() {
      var myInt = int.parse(_text1);
      assert(myInt is int);
      var myInt2 = int.parse(_text2);
      assert(myInt2 is int);
      int a = myInt-myInt2;
      _text = "" + a.toString();
    });

  }
  void mul()
  {
    setState(() {
      var myInt = int.parse(_text1);
      assert(myInt is int);
      var myInt2 = int.parse(_text2);
      assert(myInt2 is int);
      int a = myInt*myInt2;
      _text = "" + a.toString();
    });

  }
  void div()
  {
    setState(() {
      var myInt = int.parse(_text1);
      assert(myInt is int);
      var myInt2 = int.parse(_text2);
      assert(myInt2 is int);
      double a = myInt/myInt2;
      _text = "" + a.toString();
    });

  }
  void onChanged1(String value)
  {
    setState(() {
      _text="";
      _text1 = controller1.text;
    });
  }
  void onChanged2(String value)
  {
    setState(() {
      _text="";
      _text2 = controller2.text;
    });
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
              new Padding(padding: const EdgeInsets.only(top: 30.0)),
              new TextField(
                decoration: InputDecoration(labelText: "First Number"),
                keyboardType: TextInputType.numberWithOptions(),
                onChanged: (String value){onChanged1(value);},
                controller: controller1,
              ),
              new TextField(
                decoration: InputDecoration(labelText: "Second Number"),
                keyboardType: TextInputType.numberWithOptions(),
                onChanged: (String value){onChanged2(value);},
                controller: controller2,
              ),
              new Row(
                children: <Widget>[
                  new Padding(padding: const EdgeInsets.only(top: 100.0,left: 10.0)),
                  new RaisedButton(
                      child: new Text("+",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
                      color: Colors.green,
                      onPressed: (){
                        add();
                      }),
                  new RaisedButton(
                    child: new Text("-",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
                    color: Colors.yellow,
                    onPressed: (){
                      sub();
                    }),
                  new RaisedButton(
                    child: new Text("x",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
                    color: Colors.orange,
                    onPressed: (){
                      mul();
                    }),
                  new RaisedButton(
                      child: new Text("/",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
                      color: Colors.blue,
                      onPressed: (){
                        div();
                      }),
              ]
              ),
              new Text(
                "$_text",
                style:TextStyle(color: Colors.red,fontSize: 50.0,fontWeight:FontWeight.bold) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}

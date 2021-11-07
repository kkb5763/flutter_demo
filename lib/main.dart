import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'prototype_kk',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Builder(
        builder:(context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('image/logo-nicednb.jpg'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(
                      child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.teal,
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle:
                                  TextStyle(color: Colors.teal, fontSize: 15.0))),
                          child: Container(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  controller: controller,
                                  decoration:
                                  InputDecoration(labelText: 'Enter "kb = id"'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                TextField(
                                  controller: controller2,
                                  decoration:
                                  InputDecoration(labelText: 'Enter Password = 1234'),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                ButtonTheme(
                                    minWidth: 100.0,
                                    height: 50.0,
                                    child: RaisedButton(
                                        color: Colors.blueAccent,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 35.0,
                                        ),
                                        onPressed: () {

                                          if(controller.text == 'kb' && controller2.text == '1234'){
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (BuildContext context)=>Dice()));
                                          }else if(controller.text == 'kb' && controller2.text != '1234'){
                                            showSnackBar2(context);

                                          }else if(controller.text != 'kb' && controller2.text == '1234'){
                                            showSnackBar3(context);

                                          }else {
                                            showSnackBar(context);

                                          }

                                        })),
                              ],
                            ),
                          )))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context){

  Scaffold.of(context).showSnackBar(
      SnackBar(content:
      Text('id = kb, pw = 1234',
      textAlign: TextAlign.center,),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}

void showSnackBar2(BuildContext context){

  Scaffold.of(context).showSnackBar(
      SnackBar(content:
      Text('id = kb, pw = 1234',
        textAlign: TextAlign.center,),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}

void showSnackBar3(BuildContext context){

  Scaffold.of(context).showSnackBar(
      SnackBar(content:
      Text('id = kb, pw = 1234',
        textAlign: TextAlign.center,),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}

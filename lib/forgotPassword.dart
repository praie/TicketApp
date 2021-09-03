import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ForgotPassword(),
  ));
}

class ForgotPassword extends StatefulWidget {
  @override
  Forgot createState() => Forgot();
}

class Forgot extends State<ForgotPassword> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Username'),
              ),
              SizedBox(
                height: 70.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Email Address')),
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 100.0,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print(username);
                  print(password);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

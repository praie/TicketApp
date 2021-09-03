import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'forgotPassword.dart';
import 'createTicket.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  Login createState() => Login();
}

class Login extends State<LoginPage> {
  String username = '';
  String password = '';
  bool clicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
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
                    decoration: InputDecoration(
                        labelText: 'Username',
                        errorText: username.isEmpty && clicked
                            ? 'Provide Username'
                            : null),
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
                      decoration: InputDecoration(labelText: 'Password')),
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Forgot Password?',
                                style: new TextStyle(
                                  color: Colors.red,
                                  fontSize: 22,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPassword()));
                                  })
                          ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Don't have an Account?   ",
                        ),
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'SIGN UP',
                                style: new TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black87,
                                  fontSize: 22,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  })
                          ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(25),
                    color: Colors.blue,
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print(username);
                      print(password);
                      clicked = false;
                      username.isNotEmpty && password.isNotEmpty
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateTicket()))
                          : null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

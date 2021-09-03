import 'package:flutter/material.dart';
import 'createTicket.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Last Name')),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(labelText: 'Company Name')),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(labelText: 'Branch Name')),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(labelText: 'Telephone')),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(labelText: 'City')),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(labelText: 'Region')),
              SizedBox(
                height: 20.0,
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
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Repeat Password')),
              SizedBox(
                height: 100.0,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print(username);
                  print(password);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateTicket()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

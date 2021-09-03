import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateTicket extends StatefulWidget {
  const CreateTicket({Key? key}) : super(key: key);

  @override
  Create createState() => Create();
}

class Create extends State<CreateTicket> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("SAVED ! "),
      content: Text("Ticket Settings Saved."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showEmptyAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Field Empty ! "),
      content: Text("PLEASE Fill ALL The Fields"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Ticket Below'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
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
                      decoration: InputDecoration(labelText: 'Address')),
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
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(labelText: 'Ticket Number')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      maxLength: 10,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration:
                          InputDecoration(labelText: 'Urgent Level(1-10)')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      maxLength: 1,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      decoration:
                          InputDecoration(labelText: 'Assignment Status(A-E)')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(60),
                      labelText: 'Problem Description',
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(
                      'SAVE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print(username);
                      print(password);
                      username.isEmpty
                          ? showEmptyAlertDialog(context)
                          : showAlertDialog(context);
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

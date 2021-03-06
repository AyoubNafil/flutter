//@dart=2.9

import 'package:flutter/material.dart';

import 'auth/login.dart';
import 'auth/register.dart';
import 'shared/background.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Attendance System',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Container(
            child: Container(
              child: Column(
                children: [
                  Background(),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Attendance System Using Face Detection',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Divider(
                    height: 5.0,
                    thickness: 2.0,
                    color: Colors.blueAccent,
                    indent: 30.0,
                    endIndent: 30.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    minWidth: 150,
                    height: 60,
                    buttonColor: Colors.cyan,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    minWidth: 150,
                    height: 60,
                    buttonColor: Colors.blue,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register(),));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Developed By: Carol Sebastian, Surya Partap and Kevin Ruffin (TE Comps)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  var username;
  var password;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (value) => setState(() {
        username = value;
      }),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.all(10),
        hintText: "Username",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.yellow, width: 2.0)),
      ),
    );
    final passwordField = TextField(
      onChanged: (value) => setState(() {
        password = value;
      }),
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    final loginButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(380, 50),
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        primary: Colors.blue,
        onPrimary: Colors.white,
      ),
      onPressed: () {
        if (username == "admin" && password == "admin") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const homepage()),
          );
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Error"),
                content: Text("Username or Password error"),
                actions: [
                  MaterialButton(
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            },
          );
        }
      },
      child: const Text(
        "Login",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 76, 96, 89),
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset("assets/icon.png", height: 250),
                      SizedBox(
                        height: 20,
                      ),
                      usernameField,
                      SizedBox(
                        height: 20,
                      ),
                      passwordField,
                      SizedBox(
                        height: 40,
                      ),
                      loginButton,
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

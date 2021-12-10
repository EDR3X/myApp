import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/home.dart';

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
        contentPadding: EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    final loginButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
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
      child: Text(
        "Login",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 76, 96, 89),
      body: ListView(
        children: [
          Center(
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset("assets/icon.png"),
                    SizedBox(
                      height: 20,
                    ),
                    usernameField,
                    SizedBox(
                      height: 20,
                    ),
                    passwordField,
                    SizedBox(
                      height: 20,
                    ),
                    loginButton,
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

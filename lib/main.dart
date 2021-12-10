import 'package:flutter/material.dart';
import 'package:myapp/login.dart';

void main(List<String> args) => runApp(
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
        ),
        debugShowCheckedModeBanner: false,
        title: "My first App",
        home: login(),
      ),
    );

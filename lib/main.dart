import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/login.dart';

void main(List<String> args) => runApp(
      MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
        title: "App",
        home: const login(),
      ),
    );

import 'package:flutter/material.dart';
import 'package:myapp/widgets/myDrawer.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const myDrawer(),
      appBar: AppBar(
        title: const Text("Firstpage"),
      ),
      body: const Center(child: Text("something new i guess")),
    );
  }
}

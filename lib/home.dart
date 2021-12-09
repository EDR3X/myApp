import 'package:flutter/material.dart';
import 'package:myapp/myDrawer.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const myDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: const [
            Text("Hello there, what ya doin"),
          ],
        ),
      ),
    );
  }
}

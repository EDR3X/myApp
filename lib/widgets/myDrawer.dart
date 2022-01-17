import 'package:flutter/material.dart';
import 'package:myapp/screens/first.dart';
import 'package:myapp/screens/second.dart';
import 'package:myapp/screens/third.dart';
import 'package:myapp/screens/tictactoe.dart';

import '../screens/home.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  _myDrawerState createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Drawer(
        backgroundColor: Colors.cyan.shade700,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children: [
              // UserAccountsDrawerHeader(
              //     accountName: Text("Obi Wan"),
              //     accountEmail: Text("obiwan@kinobi.com")),
              const SizedBox(
                height: 50,
              ),
              ListTile(
                title: const Text("Home"),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const homepage()),
                  );
                },
              ),
              ListTile(
                title: const Text("First Page"),
                leading: const Icon(Icons.live_help_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const firstPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Second Page"),
                leading: const Icon(Icons.live_help_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const secondPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("third page"),
                leading: const Icon(Icons.live_help_outlined),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const thirdPage()),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.white60,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text("Tic Tac Toe"),
                leading: const Icon(Icons.games),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

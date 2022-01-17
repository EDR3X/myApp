import 'package:flutter/material.dart';
import 'package:myapp/widgets/myDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// To add Icon Image

  var cross = SizedBox(
    width: 90,
    height: 90,
    child: DecoratedBox(
      child: const Icon(
        Icons.cancel_outlined,
        color: Colors.white,
        size: 90,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 26, 26),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
        ),
      ),
    ),
  );

  var circle = SizedBox(
    width: 90,
    height: 90,
    child: DecoratedBox(
      child: const Icon(
        Icons.circle_outlined,
        color: Colors.white,
        size: 90,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 30, 33, 235),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
        ),
      ),
    ),
  );

  var edit = SizedBox(
    width: 90,
    height: 90,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
        ),
      ),
    ),
  );

  bool isCross = true;
  var message;
  var gameState;

  //Initialize Box with Empty Value
  @override
  void initState() {
    gameState = List.filled(9, "empty");
    this.message = "";
    super.initState();
  }

  // To play game
  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.isCross) {
          this.gameState[index] = "cross";
        } else {
          this.gameState[index] = "circle";
        }
        isCross = !isCross;
        checkWin();
      });
    }
  }

  //Reset Game
  resetGame() {
    setState(() {
      gameState = List.filled(9, "empty");
      this.message = " ";
    });
  }

  // To Get Icon image
  Widget getIcon(String title) {
    switch (title) {
      case ("empty"):
        return edit;
        break;

      case ("cross"):
        return cross;
        break;

      case ("circle"):
        return circle;
        break;
    }
    return edit;
  }

  // To Check For Winning
  checkWin() {
    if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      setState(() {
        this.message = this.gameState[0] + " Won the Game";
      });
    } else if ((gameState[3] != "empty") &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        this.message = this.gameState[3] + " Won the Game";
      });
    } else if ((gameState[6] != "empty") &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        this.message = this.gameState[6] + " Won the Game";
      });
    } else if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        this.message = this.gameState[0] + " Won the Game";
      });
    } else if ((gameState[1] != "empty") &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        this.message = this.gameState[1] + " Won the Game";
      });
    } else if ((gameState[2] != "empty") &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        this.message = this.gameState[2] + " Won the Game";
      });
    } else if ((gameState[0] != "empty") &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        this.message = this.gameState[0] + " Won the Game";
      });
    } else if ((gameState[2] != "empty") &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        this.message = this.gameState[2] + " Won the Game";
      });
    } else if (!gameState.contains('empty')) {
      setState(() {
        message = "Game Draw";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const myDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tic Tac Toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: gameState.length,
                itemBuilder: (context, i) => SizedBox(
                      width: 100,
                      height: 100,
                      child: MaterialButton(
                        onPressed: () {
                          this.playGame(i);
                        },
                        child: getIcon(this.gameState[i]),
                      ),
                    )),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            message,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: const Color.fromARGB(255, 17, 88, 146),
            minWidth: 150,
            height: 60,
            onPressed: () {
              resetGame();
            },
            child: const Text(
              "Reset",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 120,
          )
        ],
      ),
    );
  }
}

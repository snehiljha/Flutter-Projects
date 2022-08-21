import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int Num = 1;
  void changeNum() {
    setState(() {
      Num = Random().nextInt(5) + 1;
    });
    Num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask me anything"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      changeNum();
                    },
                    child: Image.asset('images/ball$Num.png')))
          ],
        ),
      ),
    );
  }
}

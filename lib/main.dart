import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              BallNumber=Random().nextInt(5)+1;
            });

          },
          child: Image(
            image: AssetImage('images/ball$BallNumber.png'),
          ),
        )
    );
  }
}



class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me anything!'),

      ),
      body: Ball(),

    );
  }

}

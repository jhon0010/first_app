import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {

  String tittle = 'Popular';

  GradientBackground(this.tittle);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurpleAccent,
            Colors.deepPurple,
          ],
          begin: FractionalOffset(0.2,0.0),
          end:  FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6], // diagonal
          tileMode: TileMode.clamp
        ),
      ),
      child: Text(
          tittle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "piedra",
          fontWeight: FontWeight.w900
        ),
      ),
      alignment: Alignment(-0.9, -0.6), // about text
    );
  }


}
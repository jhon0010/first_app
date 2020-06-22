import 'package:flutter/material.dart';

class ButtonInk extends StatelessWidget {

  String tittle = 'Profile';

  ButtonInk(this.tittle);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Navegando'),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 30, bottom: 20),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purple,
            ],
             begin: FractionalOffset(0.2, 0),
             end: FractionalOffset(1.0, 0.6),
             stops: [0,0.6],
            tileMode: TileMode.clamp
          )
        ),

        child: Center(
          child: Text(
              tittle,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "pangolin",
                color: Colors.white,
                fontWeight: FontWeight.w900
            ),
          ),
        ),

      ),
    );
  }
}
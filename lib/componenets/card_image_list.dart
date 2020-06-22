import 'package:firstapp/componenets/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 350,

      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          CardImage('assets/images/city.jpeg'),
          CardImage('assets/images/mountain.jpeg'),
          CardImage('assets/images/beach.jpg'),
        ],
      ),
    );
  }

}
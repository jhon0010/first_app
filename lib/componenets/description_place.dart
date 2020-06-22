import 'package:firstapp/componenets/button_ink_widget.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  String description;
  int starts;

  DescriptionPlace(this.namePlace,this.description,this.starts);

  @override
  Widget build(BuildContext context) {

    final start_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 0.5 ),
      child: Icon(Icons.star_border, color: Colors.amberAccent,),
    );

    final start_half = Container(
        margin: EdgeInsets.only(top: 323.0, right: 0.5 ),
        child: Icon(Icons.star_half, color: Colors.amberAccent,),
    );

    final start = Container(
      margin: EdgeInsets.only(top: 323.0, right: 0.5 ),
      child: Icon(Icons.star, color: Colors.amberAccent,), // you can create Color(HEXA_CODE)
    );

    final tittle_starts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 40.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: 'piedra',
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start,
            start_border,
          ],
        ),
      ],
    );


    final descriptionWidget = Container(
      height: 200.0,
      margin: EdgeInsets.only(left: 20, top: 10, right: 20),
      child: SingleChildScrollView(
        child: Text(
          description,
          style: const TextStyle(
            fontFamily: 'lobster',
            fontSize: 16.0,
        ),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tittle_starts,
        descriptionWidget,
        ButtonInk('Site Reference'),
      ],
    );

  }

}
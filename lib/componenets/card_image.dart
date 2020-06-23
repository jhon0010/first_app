import 'package:firstapp/componenets/withstate/floating_action_button.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {

  String image = 'assets/images/beach.jpg';

  CardImage(this.image);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80, left: 20),

      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0,7)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );
  }

}
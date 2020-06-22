import 'package:firstapp/componenets/card_image_list.dart';
import 'package:firstapp/componenets/gradient_background.dart';
import 'package:flutter/material.dart';

class HeaderImages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /**
     * Stack items over others
     */
    return Stack(
      children: <Widget>[
        GradientBackground("Sites"),
        CardImageList()
      ],
    );
  }

}
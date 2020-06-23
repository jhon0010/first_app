import 'package:firstapp/componenets/description_place.dart';
import 'package:firstapp/componenets/header_card_images_app_bar.dart';
import 'package:firstapp/componenets/review_list.dart';
import 'package:flutter/material.dart';

class HomeTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var description = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in   reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,  sunt in culpa qui officia deserunt mollit anim id est laborum.''';
    var namePlace = "Bahamas";
    var starts = 4;
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(namePlace, description, starts),
            ReviewList(),
          ],
        ),
        HeaderImages(),
      ],
    );
  }

}
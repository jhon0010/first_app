import 'package:firstapp/componenets/button_ink_widget.dart';
import 'package:firstapp/componenets/gradient_background.dart';
import 'package:firstapp/componenets/header_card_images_app_bar.dart';
import 'package:firstapp/componenets/home_background.dart';
import 'package:firstapp/componenets/description_place.dart';
import 'package:firstapp/componenets/home_trip.dart';
import 'package:firstapp/componenets/review_list.dart';
import 'package:firstapp/componenets/trips_cupertino.dart';
import 'package:firstapp/componenets/withstate/trips.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'componenets/withstate/favorites_list.dart';

void main() => runApp(Favorite());

class Favorite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Welcome to flutter',
      theme: ThemeData(primaryColor: Colors.green),
//      home: FavoriteList(),
//      home: HomeStateless(),
        home: TripsCupertino()
    );
  }

}

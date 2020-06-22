import 'package:firstapp/componenets/gradient_background.dart';
import 'package:firstapp/componenets/home_background.dart';
import 'package:firstapp/componenets/description_place.dart';
import 'package:firstapp/componenets/review_list.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'componenets/favorites_list.dart';

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
        home: Scaffold(
//          appBar: AppBar(title: Text('Background image')),
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace(
                      "Bahamas",
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in   reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,  sunt in culpa qui officia deserunt mollit anim id est laborum.'''
                      ,4),
                  ReviewList(),
                ],
              ),
              GradientBackground(),
            ],
          ),

//          body: DescriptionPlace(
//            "Bahamas",
//              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in   reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,  sunt in culpa qui officia deserunt mollit anim id est laborum.
//              ''',
//              4
//          ),
        ),
    );
  }

}

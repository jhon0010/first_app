import 'package:firstapp/componenets/Home.dart';
import 'package:firstapp/componenets/description_place.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'componenets/ListFavorites.dart';

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
          appBar: AppBar(title: Text('Background image')),
          body: DescriptionPlace(),
        ),
    );
  }

}

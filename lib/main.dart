import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'ListFavorites.dart';

void main() => runApp(Favorite());

class Favorite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Welcome to flutter',
      theme: ThemeData(primaryColor: Colors.green),
      home: FavoriteList(),
    );
  }

}

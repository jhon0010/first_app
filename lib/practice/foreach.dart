import 'package:flutter/material.dart';

import '../componenets/ListFavorites.dart';

void main() => runApp(ForEachExample());

class ForEachExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var ages = [33, 15, 27, 40, 22];
    ages.sort();
    var sum = 0;
    var minor = ages.take(1);
    var major = ages.elementAt(ages.length - 1);
    ages.forEach((age) => sum += age);
    var average = sum / ages.length;

    print(
        'The minus number $minor \n The major is  $major \n The average is $average');


    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Welcome to flutter',
      theme: ThemeData(primaryColor: Colors.green),
      home: FavoriteList(),
    );
  }
}

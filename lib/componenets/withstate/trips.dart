import 'package:firstapp/componenets/favorites_list.dart';
import 'package:firstapp/componenets/home_trip.dart';
import 'package:firstapp/componenets/profile_trip.dart';
import 'package:firstapp/componenets/search_trips.dart';
import 'package:flutter/material.dart';

class Trip extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Trip();
  }
}

class _Trip extends State<Trip> {

  int indexTap = 0;

  final List<Widget> widgetChildrens = [
    HomeTrip(),
    FavoriteList(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapped(int index) {
    setState(() { // llamar toda la funcionalidad de este widget controlar el estado
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetChildrens[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
          primaryColor: Colors.deepPurple
        ),
        child: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: indexTap,
          items: [ // crear los tabs
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Favorites'),
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              title: Text('Search'),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text('Person'),
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );

  }

}
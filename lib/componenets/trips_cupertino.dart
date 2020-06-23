import 'package:firstapp/componenets/home_trip.dart';
import 'package:firstapp/componenets/profile_trip.dart';
import 'package:firstapp/componenets/search_trips.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.deepPurple), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, color: Colors.deepPurple), title: Text("Favorite")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.deepPurple), title: Text("Search")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.deepPurple), title: Text("Person")),
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrip(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
          return null;
        },
      ),
    );
  }
}

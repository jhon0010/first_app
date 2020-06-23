import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButton();
  }
}


class _FloatingActionButton extends State<FloatingActionButtonGreen> {

  var _pressed = false;

  void _unpressedFav(){

    /// Notify the framework that the internal state of this object has changed.
    ///
    /// Whenever you change the internal state of a [State] object, make the
    /// change in a function that you pass to [setState]:
    ///
    /// ```dart
    /// setState(() { _myState = newValue; });
    setState(() {
      if (_pressed) {
        _pressed = false;
      } else {
        _pressed = true;
      }
    });

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Added to favorites $_pressed!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      mini: true,
      tooltip: 'Favorite',
      onPressed: _unpressedFav,
      child: Icon(_pressed ? Icons.favorite_border: Icons.favorite),
    );
  }

}
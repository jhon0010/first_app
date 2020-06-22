import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final start = Container(
      margin: EdgeInsets.only(top: 323.0, right: 0.5 ),
      child: Icon(Icons.star, color: Colors.amberAccent,), // you can create Color(HEXA_CODE)

    );

    final tittle_starts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 40.0
          ),
          child: Text(
              'Duwili Ella',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start,
            start,
          ],
        ),
      ],
    );


    final description = Container(
      height: 100.0,
      margin: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Text(
          'Incididunt fugiat irure voluptate officia dolor. Sit pariatur consequat adipisicing officia ex qui Lorem. Proident nisi labore nulla mollit. Fugiat esse et veniam cillum aliqua cillum ea culpa consequat culpa nostrud qui exercitation est. Deserunt adipisicing labore velit id est. Ullamco incididunt labore do nostrud deserunt ut irure elit. Labore dolore consectetur excepteur consectetur adipisicing excepteur ullamco fugiat consequat consequat aute.',
          style: const TextStyle(
            fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black38
        ),
        ),
      ),
    );

    return Column(
      children: [
        tittle_starts,
        description,
      ],
    );

  }

}
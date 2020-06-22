import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/person.jpg";
  String name = 'Varuna Cassas';
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place is Sri Lanka';

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "lobster",
            fontSize: 14.0,
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "lobster",
          fontSize: 18.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "lobster",
            fontSize: 14.0,
            color: Colors.black26
        ),
      ),
    );

    final userDetails =  Column(
      crossAxisAlignment: CrossAxisAlignment.start, // align to left
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );


    // the container should shape the photo
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0,),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover, // to the center
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }

}
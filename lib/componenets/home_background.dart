import 'package:flutter/material.dart';

class HomeStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Back Ground Screen'), backgroundColor: Colors.black12,),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, .75),),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "EXPLORE YOUR ARTIST PART",
                  style: TextStyle(fontSize: 20,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}


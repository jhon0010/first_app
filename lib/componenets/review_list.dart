import 'package:firstapp/componenets/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/person.jpg", "Luis Felipe", "1 review 5 photos", "Corte muy bueno, recomendable."),
        Review("assets/images/traveler.jpg", "Fernando Casas", "2 review 4 photos", "Corte muy bueno, recomendable."),
        Review("assets/images/person.jpg", "Gorge Garcia", "3 review 6 photos", "Corte muy bueno, recomendable."),
        Review("assets/images/traveler.jpg", "Juan Córdova", "5 review 3 photo", "Corte muy bueno, recomendable.")
      ],
    );
  }
  
}
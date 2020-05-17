import 'package:booksi/commons/constants.dart';
import 'package:flutter/material.dart';

class BookRatings extends StatelessWidget {
  final double rating;
  const BookRatings({
    Key key,
    this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 3, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: shadow),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 18,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
                text: "$rating",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          )
        ],
      ),
    );
  }
}
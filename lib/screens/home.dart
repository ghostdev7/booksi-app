import 'package:booksi/commons/constants.dart';
import 'package:booksi/widgets/book_ratings.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * .02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                      TextSpan(
                          text: "Your Shelf",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
              ),
              SizedBox(height: 30),
              ShelfBook(
                bookName: "Recursion",
                author: "Blake Crouch",
                ratings: 4.1,
                image: "recursion.jpg",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShelfBook extends StatelessWidget {
  final String bookName;
  final String author;
  final double ratings;
  final String image;
  
  const ShelfBook({
    Key key, this.bookName, this.author, this.ratings, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 240,
      width: 240,
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: shadow,
                  ))),
          Positioned(
            left: 20,
            child: Image.asset(
              "assets/images/$image",
            ),
          ),
          Positioned(
              top: 40,
              right: 15,
              child: Column(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {}),
                  BookRatings(rating: ratings)
                ],
              )),
          Positioned(
            bottom: 0,
            child: Container(
              width: 240,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "$bookName",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ),
                          Text(
                            "$author",
                            style: TextStyle(color: Colors.blueGrey),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(65),
                            bottomRight: Radius.circular(30) 
                          )
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "Details",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

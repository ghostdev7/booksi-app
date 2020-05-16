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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/top.jpg"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * .05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [TextSpan(text: "Your Shelf", style: TextStyle(fontWeight: FontWeight.bold))])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

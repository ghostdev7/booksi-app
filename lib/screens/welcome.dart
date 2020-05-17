import 'package:booksi/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  Welcome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 30,
                        color: Color(0xFF666666).withOpacity(.4))
                  ]),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 32,
                      letterSpacing: 2
                    ),
                    children: [
                      TextSpan(
                        text: "book",
                        style: TextStyle(color: Colors.white)
                      ),
                      TextSpan(
                          text: "si",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                    ]),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: RoundedButton(
                  text: "start",
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  },
                ))
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final double fontSize;

  const RoundedButton({
    Key key,
    this.text,
    this.onPress,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 36),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 30,
                  color: Color(0xFF666666).withOpacity(.4))
            ]),
        child: Text(text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize)),
      ),
    );
  }
}

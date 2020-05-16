import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Help extends StatelessWidget {

  final int id;

  Help({Key key,  @required this.id}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help for item: ' + id.toString()),
      ),
      body: WebView(
        initialUrl: 'https://the-booksi.herokuapp.com/api?id=' + id.toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), title: Text('Wallet')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications), title: Text('Settings'))
        ],
      ),
    );
  }
}

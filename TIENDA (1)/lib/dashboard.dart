import 'package:flutter/material.dart';
import 'package:simple_login_page/login_page.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final avatar = Padding(
      padding: EdgeInsets.all(20),
        child: SizedBox(
          height: 160,
          child: Image.asset('assets/groc.png'),
        )
    );

    final description = Padding(
      padding: EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'WELCOME TO TIENDA YOUR ONLINE SARI-SARI STORE :) ',
          style: TextStyle(color: Colors.black, fontSize: 20)
        ),
      ),
    );

    final buttonLogout = RaisedButton(
        child: Text('START SHOPPING', style: TextStyle(color: Colors.black87, fontSize: 16),),
      onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    );

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              avatar,
              description,
              buttonLogout
            ],
          ),
        ),
      )
    );
  }
}


import 'package:flutter/material.dart';
import 'package:groceryapp/signup.dart';
import 'login.dart';
import 'signup.dart';
//test import
import 'userActivity.dart';

void main() {
  runApp(HomePageSK());
}

class HomePageSK extends StatelessWidget {
  HomePageSK({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Smart Kitchen')),
        ),
        body: Column(
          children: [
            Image.asset("lib/images/bot.png"),
            // ignore: prefer_ _ ructors, prefer_const_constructors
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text("Welcome To\nSmart Kitchen",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color.fromARGB(197, 255, 136, 0),
                  )),
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 23),
                  ),
                ),
                child: Text('Login Here')),

            Text("Don't Have Account?",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(197, 52, 61, 62))),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child: Text("Sign Up",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(197, 255, 136, 0))),
            ),
          ],
        ),
      ),
    );
  }
}

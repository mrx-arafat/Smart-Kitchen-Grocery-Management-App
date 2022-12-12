import 'package:flutter/material.dart';
import 'package:groceryapp/signup.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(userActivity());
}

class userActivity extends StatelessWidget {
  userActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Smart Kitchen')),
        ),
        body: Column(
          children: [
            Image.asset("assets/images/home_img.png"),
            // ignore: prefer_ _ ructors, prefer_const_constructors

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

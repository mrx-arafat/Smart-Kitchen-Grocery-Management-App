import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceryapp/fl_chart.dart';
import 'package:groceryapp/homepage.dart';
import 'package:groceryapp/pages/cart_page.dart';
import 'package:groceryapp/pages/home_page.dart';
import 'package:groceryapp/userActivity.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/userNotification.dart';

void main() {
  runApp(const Successfull());
}

class Successfull extends StatelessWidget {
  const Successfull({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Kitchen',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(250, 241, 93, 40),
          title: Center(
            child: const Text('Smart Kitchen'),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 229, 79, 19),
                    Color.fromARGB(255, 218, 92, 53)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          minRadius: 35.0,
                          child: Icon(
                            Icons.notification_add,
                            size: 30.0,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserNotification(),
                              ));
                        },
                      ),

                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C5603AQF1q3RUbzprvg/profile-displayphoto-shrink_400_400/0/1646575493674?e=1676505600&v=beta&t=4Q4Gdi-1Bo0gaepfdMgYnKHzwChmdz9e83ny7X2d1Z4'),
                        ),
                      ),
                      //add Icon Button

                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.shop_2_rounded,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Easin Arafat',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Balance: 20,000 BDT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text("Back",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(197, 255, 136, 0))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => userActivity(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text("Delivery",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(197, 233, 50, 5))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text("Shop",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(197, 255, 136, 0))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Image.asset("lib/images/success.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text("Payment Successfull!!\n Delivery On Process",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(251, 39, 76, 37))),
                  ),
                  Column(
                    children: [
                      Image.asset("lib/images/delivery.jpg"),
                      // ignore: prefer_ _ ructors, prefer_const_constructors

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 232, 90, 42)),
                            textStyle: MaterialStateProperty.all(
                              GoogleFonts.notoSerif(fontSize: 23),
                            ),
                          ),
                          child: Text('Shop More')),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePageSK(),
                              ));
                        },
                        child: Text("Back To Home",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.notoSerif(
                                fontSize: 18,
                                color: Color.fromARGB(197, 92, 88, 85))),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

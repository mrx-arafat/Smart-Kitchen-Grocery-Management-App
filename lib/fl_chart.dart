import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/pages/home_page.dart';
import 'package:groceryapp/userProfile.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(250, 241, 93, 40),
        title: Center(
          child: const Text('Smart Kitchen'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Image.asset("lib/images/bar-graph.png"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text("Expenditure On Groceries \nTracking",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(251, 39, 76, 37))),
                ),
                Column(
                  children: [
                    Image.asset("lib/images/wkbar.png"),
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
                              builder: (context) => UserProfile(),
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
    );
  }
}

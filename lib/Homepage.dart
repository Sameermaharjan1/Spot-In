import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:project/parking-overview.dart';
import 'NavBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'loginpage.dart';
import 'package:project/parking-overview.dart';
import 'package:project/slots.dart';
import 'package:project/bike.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          scaffoldBackgroundColor: Color.fromARGB(255, 130, 136, 139)),
      home: const Home(),
    );
  }
}

final user = FirebaseAuth.instance.currentUser!;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            // IconButton(
            //   color: Colors.black,
            //   icon: const Icon(Icons.notifications),
            //   onPressed: () {},
            // )
          ],

          centerTitle: true,
          //toolbarHeight: 150,
          //toolbarOpacity: 0.5,
          title: Image.asset(
            "assets/images/SPOT-IN.png",
            height: 50,
            width: 200,
          ),

          //body: Center()
        ),
        body: Column(
          children: [
            Image.asset(
              "assets/images/52.png",
              // height: 100.0,
              // width: 300.0,
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.local_parking,
                color: Colors.black,
              ),
              onPressed: () {
                log("button pressed");
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Slots()));
              },
              label: const Text(
                "Car Parking \nPrice: 30 Rs/Hr",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 7, 176, 156),
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            Image.asset(
              "assets/images/53.png",
              height: 300.0,
              width: 300.0,
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.local_parking,
                color: Colors.black,
              ),
              onPressed: () {
                log("button pressed");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Slotbike()));
              },
              label: const Text(
                "Bike Parking \nPrice:25 Rs/Hr",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 7, 176, 156),
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ));
  }
}

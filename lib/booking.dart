import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:project/Homepage.dart';
import 'package:project/confirm_booking.dart';
import 'package:project/loginpage.dart';
//import 'package:jiffy/jiffy.dart';

import 'NavBar.dart';

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

class bookingpage extends StatefulWidget {
  const bookingpage({Key? key}) : super(key: key);

  @override
  State<bookingpage> createState() => _bookingpageState();
}

class _bookingpageState extends State<bookingpage> {
  final _formKey = GlobalKey<FormState>();
  //var rememberValue = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _slotController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _registrationController = TextEditingController();
  final TextEditingController _textDate = TextEditingController();
  final TextEditingController _textTime = TextEditingController();
  List<String> items = [
    'vehicle number',
    'slotnumber',
    'date',
    'time',
  ];
  String vnumber = '';
  String snumber = '';
  String dates = '';
  String time = '';

  bool _obscure = true;

  // final databaseRef = FirebaseDatabase.instance.reference();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
          centerTitle: true,
          title: Image.asset(
            "assets/images/SPOT-IN.png",
            height: 50,
            width: 200,
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    './assets/images/White_full.png',
                  ),
                  fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Booking',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(children: [
                      TextFormField(
                        onChanged: ((value) {
                          vnumber = value;
                        }),
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.black),
                        maxLines: 1,
                        controller: _numberController,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          hintText: 'Enter vehicle number',
                          prefixIcon: const Icon(
                            Icons.directions_car,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: ((value) {
                          snumber = value;
                        }),
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.black),
                        maxLines: 1,
                        controller: _slotController,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          hintText: 'Enter your Slot number',
                          prefixIcon: const Icon(
                            Icons.numbers,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onChanged: ((value) {
                          dates = value;
                        }),
                        controller: _textDate,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Select Date',
                          prefixIcon: const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black,
                          ),
                          hintStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // readOnly: true,
                        // onTap: () async {
                        //   final date = await showDatePicker(
                        //     context: context,
                        //     initialDate: DateTime.now(),
                        //     firstDate: DateTime(1950),
                        //     lastDate: DateTime(2100),
                        //   );
                        //   setState(() {
                        //     //dates = Jiffy().format("yyyy-MM-dd HH:mm:ss");
                        //     if (date != null) {
                        //       _textDate.text =
                        //           "${date.day}-${date.month}-${date.year}";
                        //     }
                        //   });
                        // },
                        // style: TextStyle(
                        //     fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        onChanged: ((value) {
                          time = value;
                        }),
                        controller: _textTime,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Select Time',
                          prefixIcon: const Icon(
                            Icons.punch_clock_outlined,
                            color: Colors.black,
                          ),
                          hintStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //readOnly: true,
                        //   onTap: () async {
                        //     final time = await showTimePicker(
                        //       context: context,
                        //       initialTime: TimeOfDay.now(),
                        //     );
                        //     setState(() {
                        //       if (time != null) {
                        //         _textTime.text = time.format(context);
                        //       }
                        //     });
                        //   },
                        //   style: TextStyle(
                        //       fontSize: 20, fontWeight: FontWeight.bold),
                        // ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.water),
                        onPressed: () async {
                          // if (_nameController.text.isNotEmpty &&
                          //     _slotController.text.isNotEmpty &&
                          //     _textDate.text.isNotEmpty &&
                          //     _textTime.text.isNotEmpty) {
                          //   insertData(
                          //       _numberController.text,
                          //       _slotController.text,
                          //       _textDate.text,
                          //       _textTime.text);
                          // }
                          await users.add({
                            'vehiclenumber': vnumber,
                            'slotnumber': snumber,
                            'date': dates,
                            'time': time,
                          }).then((value) => print('User added'));

                          //log("${_numberController.text}");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Confirmbooking()));
                        },
                        label: const Text("Book"),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 7, 176, 156),
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            side: BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      // OutlinedButton(
                      //     onPressed: () {
                      //       if (_nameController.text.isNotEmpty &&
                      //           _slotController.text.isNotEmpty &&
                      //           _textDate.text.isNotEmpty &&
                      //           _textTime.text.isNotEmpty) {
                      //         insertData(
                      //             _numberController.text,
                      //             _slotController.text,
                      //             _textDate.text,
                      //             _textTime.text);
                      //       }
                      //     },
                      //     child: Text(
                      //       "Book",
                      //       style: TextStyle(fontSize: 18),
                      //     ))
                    ]),
                  )
                ])));
  }
}

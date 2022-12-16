import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Homepage.dart';
import 'package:project/booking.dart';
import 'package:project/mainpage.dart';
import 'package:project/signup.dart';

import 'NavBar.dart';
import 'my_custom_button.dart';

class Slots extends StatelessWidget {
  //bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //drawer: NavBar(),
      appBar: AppBar(
          title: Text("Car Parking Overview"),
          backgroundColor: Color.fromARGB(255, 1, 49, 3),
          actions: [
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ]),
      backgroundColor: Colors.black,
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: List.generate(choices.length, (index) {
            return Center(
              child: SelectCard(choice: choices[index]),
            );
          })),
    ));
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'SLOT 1', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 2', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 3', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 4', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 5', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 6', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 7', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 8', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 9', icon: Icons.directions_car_outlined),
  const Choice(title: 'SLOT 10', icon: Icons.directions_car_outlined),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;

    return Card(
      color: Colors.orange,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Icon(choice.icon, size: 50.0, color: Colors.black)),
            Text(choice.title, style: textStyle),
            MyCustomButton(
                text: "Select",
                color: Colors.black,
                textColor: Colors.white,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => bookingpage()));
                })
          ],
        ),
        //  Expanded(
        //   child: Column(
        //   children: [
        //     LocationField(
        //         isDestination: false,
        //         textEditingController: sourceController),
        //     LocationField(
        //         isDestination: true,
        //         textEditingController: destinationController),

        //   ],
        //  ),
        // ),
        //       Align(
        //         alignment: Alignment.bottomCenter,
        //         child: Container(
        //           margin: const EdgeInsets.all(5),
        //           width: double.infinity,
        //           child: ElevatedButton(
        //             onPressed: () {},
        //             child: const Text('Bottom Button '),  // trying to move to the bottom
        //           ),
        //         ),
        //       )

        // ],
      ),
    );
  }
}

// class button extends StatelessWidget {
//   //const SelectCard({Key? key, required this.choice}) : super(key: key);
//   // final Choice choice;

//   @override
//   Widget build(BuildContext context) {
//     // final TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
//     return Scaffold(
//       body: ElevatedButton(
//         onPressed: () {
//           //if (_formKey.currentState!.validate()) {}
//           log("button pressed");
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => MySignupPage()));
//           //   },
//           //   label: const Text("Sign in"),
//           // ),
//         },
//         style: ElevatedButton.styleFrom(
//             primary: Color.fromARGB(255, 84, 242, 224),
//             //padding: const EdgeInsets.fromLTRB(, 10, 30, 10),
//             alignment: Alignment.bottomCenter,
//             side: BorderSide(color: Colors.white),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10))),
//         child: const Text(
//           'Sign in',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

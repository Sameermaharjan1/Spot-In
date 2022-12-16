import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/loginpage.dart';
import 'package:lottie/lottie.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void completed() {
//     Navigator.of(context)
//         .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
//   }

//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 2), completed);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var verheight = MediaQuery.of(context).size.height;
//     return Scaffold(
//         backgroundColor: Color(0xffe1f1fd),
//         body: Stack(fit: StackFit.expand, children: <Widget>[
//           Container(
//             child: Image(
//               image: AssetImage('./assets/images/Bento.png'),
//               height: (1 / 4) * verheight,
//             ),
//           ),
//         ]));
//   }
// }
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle(statusBarColor: Colors.transparent));
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.green),
      // home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [
      //           // Color.fromARGB(255, 52, 245, 187),
      //           // Color.fromARGB(255, 59, 107, 240),
      //           Colors.white,
      //           Colors.white
      //         ]),
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Column(
      //         children: [
      //           Image.asset(
      //             "assets/images/SPOT-IN.png",
      //             height: 300.0,
      //             width: 300.0,
      //           ),
      //           // SizedBox(
      //           //   height: 40,
      //           // ),
      //           // Text(
      //           //   "At your fingertips",
      //           //   textAlign: TextAlign.center,
      //           //   style: TextStyle(
      //           //     color: Colors.white,
      //           //     fontWeight: FontWeight.bold,
      //           //     fontSize: 20.0,
      //           //   ),
      //           // ),
      //         ],
      //       ),
      //       CircularProgressIndicator(
      //         backgroundColor: Colors.grey,
      //         valueColor: AlwaysStoppedAnimation<Color>(
      //             Color.fromARGB(255, 61, 59, 216)),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Lottie.asset('assets/fonts/parking1.json'),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({required Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("Home Screen"),
//       ),
//     );
//   }
// }

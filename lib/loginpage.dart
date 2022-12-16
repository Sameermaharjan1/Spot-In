import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:project/AdminPage.dart';
import 'package:project/my_custom_button.dart';
import 'package:project/reset_password.dart';
import 'package:project/reusable_widgets/reusable_widget.dart';
import 'package:project/signup.dart';
import 'package:project/utils/color_utils.dart';

import 'Homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/SPOT-IN.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 1,
                ),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                // ElevatedButton.icon(
                //   icon: const Icon(Icons.),
                //   onPressed: () {
                //     //log("${_numberController.text}");

                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => AdminPage()));
                //   },
                //   label: const Text("login as admin"),
                //   style: ElevatedButton.styleFrom(
                //       primary: Color.fromARGB(255, 254, 254, 254),
                //       padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                //       side: BorderSide(color: Colors.black),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
                MyCustomButton(
                    text: "Login As admin",
                    color: Colors.white,
                    textColor: Colors.black,
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AdminPage()));
                    }),
                const SizedBox(
                  height: 8,
                ),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}

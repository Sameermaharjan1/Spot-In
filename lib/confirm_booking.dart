import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/khalti_payment_page.dart';

import 'Homepage.dart';

class Confirmbooking extends StatelessWidget {
  const Confirmbooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
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

          //body: Center()
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset(
                      "assets/images/icon.png",
                      height: 100,
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Booking Done.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Please Visit Your Spot on Time.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.payment),
                      onPressed: () {
                        //log("button pressed");
                        // log("${_nameController.text}");
                        //  log("${_emailController.text}");
                        //log("${_numberController.text}");
                        ///log("${_passwordController.text}");
                        //log("${_confirmpasswordController.text}");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KhaltiPaymentPage()));
                      },
                      label: const Text("Khalti Payment"),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 165, 13, 216),
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ]))),
        ));
  }
}

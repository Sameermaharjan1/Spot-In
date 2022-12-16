import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/AdminPage.dart';
import 'package:project/userdetails.dart';

import 'Homepage.dart';

class Adminpanel extends StatelessWidget {
  const Adminpanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Admin"),
        backgroundColor: Color.fromARGB(255, 136, 246, 140),
        //actions: [
        // IconButton(
        //   icon: const Icon(Icons.exit_to_app),
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => userdetail()));
        //   },
        // ),
        //]
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.admin_panel_settings,
            color: Colors.black,
          ),
          onPressed: () {
            //log("${_numberController.text}");

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => userdetail()));
          },
          label: const Text(
            "User Details",
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              side: BorderSide(color: Colors.black),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}

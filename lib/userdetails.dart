import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';

// class userdetail extends StatelessWidget {
//   // final Stream<QuerySnapshot> users =
//   //     FirebaseFirestore.instance.collection('users').snapshots();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: Padding(
//       //     padding: const EdgeInsets.all(20.0),
//       //     child:
//       //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       //       Text(
//       //         'User Details',
//       //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//       //       ),
//       //       Container(
//       //         height: 250,
//       //         padding: const EdgeInsets.symmetric(vertical: 20),
//       //         child: StreamBuilder<QuerySnapshot>(
//       //           stream: users,
//       //           builder: (BuildContext context,
//       //               AsyncSnapshot<QuerySnapshot> snapshot) {
//       //             if (snapshot.hasError) {
//       //               return Text('Something went wrong.');
//       //             }
//       //             if (snapshot.connectionState == ConnectionState.waiting) {
//       //               return Text('Loading');
//       //             }
//       //             final data = snapshot.requireData;
//       //             return ListView.builder(
//       //               itemCount: data.size,
//       //               itemBuilder: (context, index) {
//       //                 return Text(
//       //                     'Vehicle Number: ${data.docs[index]['vehiclenumber']} \n Slot Number${data.docs[index]['slotnumber']} \n Date: ${data.docs[index]['date']} \n Time: ${data.docs[index]['time']} \n\n');
//       //               },
//       //             );
//       //           },
//       //         ),
//       //       )
//          // ])),
//     );
//   }
// }
class userdetail extends StatefulWidget {
  const userdetail({Key? key}) : super(key: key);

  @override
  State<userdetail> createState() => _userdetailState();
}

class _userdetailState extends State<userdetail> {
  getdata() async {
    var result = await FirebaseFirestore.instance.collection("users").get();
    return result;
  }

  String updatedslotnumber = '';
  String updatedvehiclenumber = '';
  String updateddate = '';
  String updatedtime = '';
  updatedata(id, Value, Value1, Value2, Value3) async {
    await FirebaseFirestore.instance.collection("users").doc(id).update({
      'slotnumber': Value,
      'vehiclenumber': Value1,
      'time': Value3,
      'date': Value2,
    });
  }

  deletedata(id) async {
    await FirebaseFirestore.instance.collection("users").doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Details"),
          backgroundColor: Color.fromARGB(255, 136, 246, 140),
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.exit_to_app),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => userdetail()));
          //     },
          //   ),
          // ]
        ),
        body: FutureBuilder(
            future: getdata(),
            builder: (context, dynamic snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(8),
                        child: ListTile(
                          leading: GestureDetector(
                              onTap: () {
                                Get.defaultDialog(
                                    content: Column(
                                      children: [
                                        TextField(
                                          textAlign: TextAlign.left,
                                          keyboardType: TextInputType.number,
                                          style: const TextStyle(
                                              color: Colors.black),
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            hintText: 'Enter Slot Number',
                                            // prefixIcon: const Icon(
                                            //   Icons.numbers,
                                            //   color: Colors.black,
                                            // ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onChanged: (Value) {
                                            setState(() {
                                              updatedslotnumber = Value;
                                            });
                                          },
                                        ),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          keyboardType: TextInputType.number,
                                          style: const TextStyle(
                                              color: Colors.black),
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            hintText: 'Enter Vehicle Number',
                                            // prefixIcon: const Icon(
                                            //   Icons.numbers,
                                            //   color: Colors.black,
                                            // ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onChanged: (Value1) {
                                            setState(() {
                                              updatedvehiclenumber = Value1;
                                            });
                                          },
                                        ),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          keyboardType: TextInputType.text,
                                          style: const TextStyle(
                                              color: Colors.black),
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            hintText: 'Enter Date',
                                            // prefixIcon: const Icon(
                                            //   Icons.numbers,
                                            //   color: Colors.black,
                                            // ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onChanged: (Value2) {
                                            setState(() {
                                              updateddate = Value2;
                                            });
                                          },
                                        ),
                                        TextField(
                                          textAlign: TextAlign.left,
                                          keyboardType: TextInputType.text,
                                          style: const TextStyle(
                                              color: Colors.black),
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                            hintText: 'Enter Time',
                                            // prefixIcon: const Icon(
                                            //   Icons.numbers,
                                            //   color: Colors.black,
                                            // ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onChanged: (Value3) {
                                            setState(() {
                                              updatedtime = Value3;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            updatedata(
                                                snapshot.data.docs[index].id,
                                                updatedslotnumber,
                                                updatedvehiclenumber,
                                                updateddate,
                                                updatedtime);
                                            setState(() {});
                                          },
                                          child: Text("Update")),
                                    ]);
                              },
                              child: Icon(Icons.edit)),
                          title: Text(
                              "Slot Number: ${snapshot.data.docs[index]['slotnumber']}\nVehicle Number:${snapshot.data.docs[index]['vehiclenumber']}\nDate:${snapshot.data.docs[index]['date']}\nTime:${snapshot.data.docs[index]['time']}"),
                          subtitle: Text("${snapshot.data.docs[index].id}"),
                          trailing: GestureDetector(
                              onTap: () {
                                // deletedata(snapshot.data.docs[index].id);
                                // setState(() {});
                                Get.defaultDialog(
                                    content: Column(children: [
                                  Text("Do you want to Delete?"),
                                  TextButton(
                                    child: Text('Confirm'),
                                    onPressed: () {
                                      deletedata(snapshot.data.docs[index].id);
                                      setState(() {});
                                      print('Confirmed');
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             userdetail()));
                                    },
                                  ),
                                ]));
                              },
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}

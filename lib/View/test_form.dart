import 'dart:async';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final firestore = FirebaseFirestore.instance;
  final databse = FirebaseDatabase.instance;

  final msg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          TextField(
            controller: msg,
          ),
          SizedBox(height: 30),
          TextButton(
              onPressed: () async {
                // Sending data to firestore

                // await firestore
                //     .collection("users")
                //     .add({"name": "Mandeep", "address": "Hansi"}).then(
                //         (value) => print(value.id));

                // reading data from firestore

                // await firestore
                //     .collection("users")
                //     .where("address", isEqualTo: "Hansi")
                //     .get()
                //     .then((value) => print(value.docs
                //         .map((e) => e.data().toString() + " ${e.id}")));

                // reading data using ID

                // await firestore
                //     .collection("users")
                //     .doc("VBuEX2yMzuMqNCtZM8Bt")
                //     .get()
                //     .then((value) => print(value.data()));

                // realtime database

                // Add value on database
                await databse
                    .ref("chats")
                    .push()
                    .set({"msg": msg.text, "sender": "sunil"});
              },
              child: Text("Add Data"))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import '../pageone.dart';

class Complaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("complaint"),
      //   centerTitle: true,
      //   backgroundColor: mainecolor,
      // ),
      body: Center(
        child: const Text(
          "complaint",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

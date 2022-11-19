import 'package:flutter/material.dart';
import '../pageone.dart';
import '../Sidebar/Ndrawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 220,
        child: const Ndrawer(),
      ),
      appBar: AppBar(
        title: const Text("CPA"),
        centerTitle: true,
        backgroundColor: mainecolor,
      ),
      body: Center(
        child: const Text("Home"),
      ),
    );
  }
}

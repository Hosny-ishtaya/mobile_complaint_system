import 'package:covid_project/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:covid_project/pageone.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:covid_project/signup_page.dart';
import 'package:covid_project/wellcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'covid project',
      theme: ThemeData(
        primaryColor: maincolor,
        scaffoldBackgroundColor: bgcolor,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          displayMedium: TextStyle(
              color: mainecolor, fontWeight: FontWeight.bold, fontSize: 40),
          //button: TextStyle(color: prcolor),
          displayLarge: TextStyle(
              color: mainecolor, fontWeight: FontWeight.bold, fontSize: 28),
          displaySmall: TextStyle(
              color: mainecolor, fontWeight: FontWeight.bold, fontSize: 12),

          // button: TextStyle(color: Color.fromRGBO(148, 36, 29, 1)),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
        ),
      ),
      home: wellcomsecreen(),
    );
  }
}

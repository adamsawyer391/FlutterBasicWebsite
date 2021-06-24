import 'package:flutter/material.dart';
import 'package:myapp/Navbar/navbar.dart';
import 'package:myapp/landingpage/LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat'
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(195, 20, 50, 1.0), Color.fromRGBO(36, 11, 54, 1.0)], 
            begin: Alignment.centerLeft, 
            end: Alignment.centerRight)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(), Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: LandingPage(),
              )
            ],
            ),
        ),
        ),
    );
  }
}

 
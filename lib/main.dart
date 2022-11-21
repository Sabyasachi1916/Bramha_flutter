import 'package:bramha/views/pages/home.dart';
import 'package:bramha/views/widgets/Footer.dart';
import 'package:bramha/views/pages/Landing.dart';
import 'package:bramha/views/widgets/doctor_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bramha',
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Colors.white70),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}




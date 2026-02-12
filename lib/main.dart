import 'package:flutter/material.dart';
import 'mainNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NusanTrix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
      ),
      // PENTING: Gunakan MainNavigation sebagai home, bukan HomePage
      home: const MainNavigation(),
    );
  }
}

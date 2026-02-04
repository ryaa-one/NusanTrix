import 'package:flutter/material.dart';
import 'package:nusantrix/pageDaftar.dart';

void main() {
  runApp(const NusanTrixApp());
}

class NusanTrixApp extends StatelessWidget {
  const NusanTrixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DaftarPage(),
    );
  }
}

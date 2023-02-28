import 'package:flutter/material.dart';
import 'package:proj_caleg/layars/beranda.dart';
import 'package:proj_caleg/wrapper.dart';

void main() {
  runApp(const BacalegApp());
}

class BacalegApp extends StatelessWidget {
  const BacalegApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Beranda(),
    );
  }
}



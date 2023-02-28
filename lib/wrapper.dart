import 'package:flutter/material.dart';
import 'package:proj_caleg/layars/beranda.dart';
import 'package:proj_caleg/otentikasi/otentikasi.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    late String currentPengguna;
    currentPengguna = "";
    if(currentPengguna.isEmpty) {
      return const Otentikasi();
    } else {
      return const Beranda();
    }
  }
}

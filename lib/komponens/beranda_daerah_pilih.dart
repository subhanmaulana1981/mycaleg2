import 'package:flutter/material.dart';

class BerandaDaerahPilih extends StatefulWidget {
  const BerandaDaerahPilih({Key? key}) : super(key: key);

  @override
  State<BerandaDaerahPilih> createState() => _BerandaDaerahPilihState();
}

class _BerandaDaerahPilihState extends State<BerandaDaerahPilih> {

  final List<String> _listCurrentKecamatan = [
    "bojongmangu",
    "cibarusah",
    "cikarang pusat",
    "cikarang selatan",
    "serang baru",
    "setu",
  ];

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(_listCurrentKecamatan.length, (index) {
          return Card(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Image.asset(
                  "assets/logo_bekasi.png",
                  fit: BoxFit.fitWidth,
                ),

                Text(
                  _listCurrentKecamatan[index].toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

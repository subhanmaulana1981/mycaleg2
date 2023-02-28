import 'package:flutter/material.dart';
import 'package:proj_caleg/komponens/beranda_daerah_pilih.dart';
import 'package:proj_caleg/komponens/beranda_monitoring.dart';
import 'package:proj_caleg/komponens/beranda_tim_sukses.dart';
import 'package:proj_caleg/komponens/beranda_drawer.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const BerandaMonitoring(),
    const BerandaDaerahPilih(),
    const BerandaTimSukses(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda"),
        actions: <Widget>[
          Row(
            children: <Widget>[
              const Text("Ke luar di sini"),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
        ],
      ),
      drawer: const BerandaDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Monitoring",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.area_chart),
            label: "Daerah Pilih",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "Tim Sukses"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


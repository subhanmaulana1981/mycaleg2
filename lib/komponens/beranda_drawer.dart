import 'package:flutter/material.dart';
import 'package:proj_caleg/komponens/beranda_drawer_timses.dart';
import 'package:proj_caleg/layars/caleg_profil.dart';

class BerandaDrawer extends StatelessWidget {
  const BerandaDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          
          // user account drawer
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              currentAccountPictureSize: Size.square(72.0),
              accountName: Text("subhan maulana"),
              accountEmail: Text("SubhanMaulana1981@gmail.com")),

          // profil caleg
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.account_circle,
                size: 52.0,
              ),
              title: const Text("Profil Caleg"),
              subtitle: const Text("Lihat profil caleg"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CalegProfil();
                    }
                  ),
                );
              },
            ),
          ),

          // pengaturan
          const Card(
            child: ExpansionTile(
              leading: Icon(
                Icons.settings,
                size: 52.0,
              ),
              title: Text("Pengaturan"),
              subtitle: Text("Pengaturan aplikasi"),
              children: <Widget>[
                // pengaturan timses
                Card(child: BerandaDrawerTimses()),
              ],
            ),
          ),

          // tentang aplikasi
          const Card(
            child: ListTile(
              leading: Icon(
                Icons.info,
                size: 52.0,
              ),
              title: Text("Tentang Aplikasi"),
              subtitle: Text("Tentang aplikasi ini"),
            ),
          ),
        ],
      ),
    );
  }
}

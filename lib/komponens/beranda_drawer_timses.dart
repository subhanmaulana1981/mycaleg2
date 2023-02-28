import 'package:flutter/material.dart';
import 'package:proj_caleg/layars/timses_request.dart';

class BerandaDrawerTimses extends StatelessWidget {
  const BerandaDrawerTimses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(
        Icons.people,
        size: 52.0,
      ),
      title: const Text("Timses"),
      subtitle: const Text("Pengaturan Timses"),
      children: <Widget>[
        ListTile(
          leading: const Icon(
            Icons.person,
            size: 52.0,
          ),
          title: const Text("Request Timses"),
          subtitle: const Text("Terima request dari Timses"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const TimsesRequest();
                }
              ),
            );
          },
        ),
      ],
    );
  }
}

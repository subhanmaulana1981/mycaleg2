import 'package:flutter/material.dart';
import 'package:proj_caleg/layars/timses_request_detail.dart';

class TimsesRequestCard extends StatelessWidget {
  const TimsesRequestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.person,
          size: 52.0,
        ),
        title: const Text("Edvin Gunawan"),
        subtitle: const Text("Karang Indah"),
        trailing: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: const Text("Yakin hapus data?"),
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                              onPressed: () {},
                              child: const Text("Ya")
                          ),
                          const SizedBox(width: 10.0),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Tidak")
                          ),
                        ],
                      ),
                    ],
                  );
                }
              );
            },
            icon: const Icon(
              Icons.delete,
              size: 32.0,
            )
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const TimsesRequestDetail();
              },
            ),
          );
        },
      ),
    );
  }
}

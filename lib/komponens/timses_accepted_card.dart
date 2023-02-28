import 'package:flutter/material.dart';
import 'package:proj_caleg/layars/timses_accepted_detail.dart';

class TimsesAcceptedCard extends StatelessWidget {
  const TimsesAcceptedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.person,
          size: 52.0,
        ),
        title: const Text("Erwin Burhanuddin"),
        subtitle: const Text("Cibarusah"),
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
                return TimsesAcceptedDetail();
              },
            ),
          );
        },
      ),
    );
  }
}

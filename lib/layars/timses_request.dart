import 'package:flutter/material.dart';
import 'package:proj_caleg/komponens/timses_request_card.dart';

class TimsesRequest extends StatefulWidget {
  const TimsesRequest({Key? key}) : super(key: key);

  @override
  State<TimsesRequest> createState() => _TimsesRequestState();
}

class _TimsesRequestState extends State<TimsesRequest> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Timses | Request"),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: TimsesRequestCard(),
          );
        }
      ),

    );
  }
}

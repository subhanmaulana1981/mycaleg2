import 'package:flutter/material.dart';
import 'package:proj_caleg/komponens/timses_accepted_card.dart';

class BerandaTimSukses extends StatefulWidget {
  const BerandaTimSukses({Key? key}) : super(key: key);

  @override
  State<BerandaTimSukses> createState() => _BerandaTimSuksesState();
}

class _BerandaTimSuksesState extends State<BerandaTimSukses> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.all(10.0),
          child: TimsesAcceptedCard(),
        );
      }
    );
  }
}

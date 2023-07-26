
import 'package:flutter/material.dart';
import 'package:water_can_app/widgets/button.dart';
import 'package:water_can_app/widgets/new_record.dart';

class PreviousRecord extends StatefulWidget {
  const PreviousRecord({super.key});

  @override
  State<PreviousRecord> createState() => _PreviousRecordState();
}

class _PreviousRecordState extends State<PreviousRecord> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

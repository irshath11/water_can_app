import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:water_can_app/widgets/button.dart';
import 'package:water_can_app/widgets/new_record.dart';
import 'package:water_can_app/widgets/previous_record.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
            const SizedBox(height: 100),
            Container(
                width: 200,
                height: 250,
                color: Colors.transparent,
                child: Image.asset('assets/images/waterDash.png')),
            const SizedBox(height: 150),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return const NewRecord();
                          });
                    },
                    child: const Text(
                      'New Record',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            const SizedBox(height: 20),
            Button(
                text: "Previous Record",
                colorBg: Colors.blue,
                textColor: Colors.white,
                width: MediaQuery.of(context).size.width - 40,
                onTapAction: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PreviousRecord()));
                }),
          ],
        ),
      ),
    );
  }
}

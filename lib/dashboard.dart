import 'package:flutter/material.dart';
import 'package:water_can_app/widgets/button.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
           Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue,
          ),
         const SizedBox(height: 100),
         Container(
          width: 150,
          height: 200,
          color: Colors.transparent,
          child: Image.asset('assets/images/waterDash.png')),
         const SizedBox(height: 200),
         Button(text: "New Record", colorBg: Colors.blue, textColor: Colors.white, onTapAction: () {}),
         const SizedBox(height: 20),
         Button(text: "Previous Record", colorBg: Colors.blue, textColor: Colors.white, onTapAction: () {}),
        ],
      ),
    );
  }
}
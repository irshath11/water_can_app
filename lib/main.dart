import 'package:flutter/material.dart';
import 'package:water_can_app/dashboard.dart';
import 'package:water_can_app/widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset('assets/images/water.png'),
            ),
            Button(
              text: 'LogIn',
              colorBg: Colors.white,
              textColor: Colors.black,
              width: MediaQuery.of(context).size.width - 40,
              onTapAction: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DashBoard()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:water_can_app/widgets/button.dart';

class NewRecord extends StatefulWidget {
  const NewRecord({super.key});

  @override
  State<NewRecord> createState() => _NewRecordState();
}

class _NewRecordState extends State<NewRecord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            child: Center(child: Text('2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50))),
          ),
          const SizedBox(
            child: Center(child: Text('cans', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30))),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(text: '-', colorBg: Colors.white, textColor: Colors.black, onTapAction: (){}, width: 150),
                Button(text: '+', colorBg: Colors.white, textColor: Colors.black, onTapAction: (){}, width: 150),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Button(text: 'Record', colorBg: Colors.white, textColor: Colors.black, onTapAction: (){}, width: MediaQuery.of(context).size.width - 50)
        ],
      ),
    );
  }
}

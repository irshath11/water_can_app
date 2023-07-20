import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.text, required this.colorBg, required this.textColor, required this.onTapAction});
  final String text;
  final Color colorBg;
  final Color textColor;
  final Function() onTapAction;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTapAction,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: widget.colorBg, borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width - 40,
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor, fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

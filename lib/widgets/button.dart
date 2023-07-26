
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.text, required this.colorBg, required this.textColor, required this.onTapAction, required this.width});
  final String text;
  final Color colorBg;
  final Color textColor;
  final double width;
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
        height: 40,
        decoration: BoxDecoration(
            color: widget.colorBg, borderRadius: BorderRadius.circular(20)),
        width: widget.width,
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class page extends StatelessWidget {
  page({this.text, this.color, this.ontap});
  String? text;
  Color? color;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 100,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        child: Text(
          text!,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

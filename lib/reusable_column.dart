import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

class Reusable_column extends StatelessWidget {

  const Reusable_column({ required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(height: 13.0,),
        Text(label,style:labelTextStyle ,)
      ],
    );
  }
}
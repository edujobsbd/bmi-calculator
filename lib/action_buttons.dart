import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({Key? key, required this.icon,required this.onPressed}) : super(key: key);
  final IconData icon;
  final onPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,size: 35,color: Colors.white,),
      onPressed:onPressed,
      elevation: 3.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

class BottomButton extends StatelessWidget {
   BottomButton({
    required this.bottomText,
    required this.onTap
  });
  final String bottomText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
            child: Text(bottomText,style: largeButtonTextStyle,)
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 18.0),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
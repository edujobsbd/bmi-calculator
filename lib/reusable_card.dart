import 'package:flutter/cupertino.dart';

class Reuseable_card extends StatelessWidget {

  Reuseable_card({ required this.color, this.cardChild,this.onPress});

  final Color color;
  final cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:color
        ),
      ),
    );
  }
}
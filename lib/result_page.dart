import 'package:bmi_calculator_1/input_page.dart';
import 'package:bmi_calculator_1/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bottom_text.dart';

const ktitleTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kBodyTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kResultTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kDescriptionTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

class ResultPage extends StatelessWidget {
  const ResultPage({required this.bmiResult,required this.description,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SizedBox(width: 20.0,),
                  Text('Your Result ',style:ktitleTextStyle ,
                  )],),
          ),
          Expanded(
            flex: 5,
              child:Reuseable_card(
                color: activeCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText,
                          style: kBodyTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: kResultTextStyle,
                        ),
                        Text(
                          description,
                          style: kDescriptionTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
              ),
          ),
          BottomButton(
            bottomText: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}

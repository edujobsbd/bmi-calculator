
import 'package:bmi_calculator_1/result_page.dart';
import 'package:bmi_calculator_1/reusable_card.dart';
import 'package:bmi_calculator_1/reusable_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'action_buttons.dart';
import 'bottom_text.dart';
import 'brain.dart';

const bottomContainerHeight = 75.0;
const activeCardColor = Color(0xFF252640);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const numberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color:Colors.white,
);


enum Gender {
  Female,
  Male,
}

class Input_Page extends StatefulWidget {
  const Input_Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Input_Page> createState() => _Input_PageState();
}

class _Input_PageState extends State<Input_Page> {

  Gender selectedGender=Gender.Male;
  int height = 180;
  int weight = 50;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body:Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Reuseable_card(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.Male;
                          });
                        },
                          color:selectedGender==Gender.Male?activeCardColor:inactiveCardColor,
                        cardChild: Reusable_column(icon: FontAwesomeIcons.mars,label: 'Male',),
                      ),
                  ),
                  Expanded(
                      child: Reuseable_card(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.Female;
                          });
                        },
                        color: selectedGender==Gender.Female?activeCardColor:inactiveCardColor,
                        cardChild: Reusable_column(icon: FontAwesomeIcons.venus, label: 'Female'),
                      ),
                  )
                ],
              )
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reuseable_card(
                        color: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HEIGHT',style: labelTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children:  [
                              Text(
                                height.toString(),style: numberTextStyle,
                              ),
                              Text('cm',style: labelTextStyle,),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Color(0xFFFFFFFF),
                              inactiveTrackColor: Color(0xFF8D8E98),
                              thumbColor: Color(0xFFE91E63),
                              overlayColor: Color(0x29E91E63),
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15.0,
                              ),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 230.0,
                              onChanged: (double newValue){
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child:  Reuseable_card(
                        color: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style:labelTextStyle),
                          Text(weight.toString(),style: numberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                  icon: Icons.remove,
                                onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                },
                              ),
                              SizedBox(width: 10,),
                              RoundedIconButton(
                                  icon: Icons.add,
                                onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child:  Reuseable_card(
                      color: activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style:labelTextStyle),
                          Text(age.toString(),style: numberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              RoundedIconButton(
                                  icon: Icons.remove,
                                onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                },
                              ),
                              SizedBox(width: 10,),
                              RoundedIconButton(
                                  icon: Icons.add,
                                onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
           BottomButton(
            bottomText: 'CALCULATE',
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    description: calc.getInterpretation(),
                    resultText: calc.getResult(),
                  ),)
              );
            },
          )
        ],
      ),
    );
  }


}




const largeButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  color: Colors.white
);




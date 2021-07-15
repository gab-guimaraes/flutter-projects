
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';

//class 12

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  MALE,
  FEMALE,
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child:
                GestureDetector (
                onTap: () {
                  print('Male card was pressed');
                  setState(() {
                   selectedGender = Gender.MALE;
                  });
                },
                child: ReusableCard(
                  colour: selectedGender == Gender.MALE ? activeMaleCardColour : inactiveCardColour,
                  cardChild:
                  Column(
                    children: [
                      IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ],
                  )
                ),
              ),
              ),
              Expanded(
                  child:
                  GestureDetector (
                    onTap: () {
                    setState(() {
                      print('click on female');
                      selectedGender = Gender.FEMALE;
                    });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.FEMALE ? activeFemaleCardColour : inactiveCardColour ,
                      cardChild: Column(
                        children: [
                          IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',)
                        ],
                      ),
                    ),
                  )
              )
            ],
          )),
          Expanded(child: ReusableCard(
            colour: squareColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT', style: labelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: boldLabelTextStyle,
                    ),
                    Text(
                      'cm',
                      style: labelTextStyle,
                    )
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 100.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },
                )
              ],
            ),

          ),
          ),
          Expanded(
              child:
              Row(children:
              [
                Expanded(child: ReusableCard(colour: squareColor)),
                Expanded(child: ReusableCard(colour: squareColor)),
                Expanded(child: ReusableCard(colour: squareColor)),
              ],
          )),
        ],

      )
    );
  }
}





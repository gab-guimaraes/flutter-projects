
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
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
              children: [
                Text('HEIGHT', style: labelTextStyle),
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





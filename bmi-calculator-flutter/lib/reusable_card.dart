import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  Color colour;
  Widget cardChild;

  ReusableCard({this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    print('buildinga');

    return Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        )
    );
  }
}
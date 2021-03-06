import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
const bottomContainerHeight=80.0;
const activeCardColour=Color(0xFF1D1E33);
const inactiveCardColour=Color(0xFF111328);
const bottomContainerColour= Color(0xFFEB1555);

enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: GestureDetector(
                onTap:(){
                  setState(() {
                    selectedGender=Gender.male;
                  });
                },
                child: ReusableCard(
                  colour:selectedGender==Gender.male?activeCardColour:inactiveCardColour ,
                  cardChild: IconsContent(
                    icon:FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              ),
              Expanded(
                child:GestureDetector(
                  onTap:(){
                    setState(() {
                      selectedGender=Gender.female;
                    });
                  },

                      child: ReusableCard(

                colour: selectedGender==Gender.female?activeCardColour:inactiveCardColour,
                cardChild: IconsContent(icon:FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
              ),
    ),
              ),
            ],
          )),
          Expanded(child:
          ReusableCard(
            colour: activeCardColour,
            cardChild: Column(),

          ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(),
              ),),
              Expanded(child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(),
              ),),
            ],
          )),
          Container(
            color:bottomContainerColour,
            margin: EdgeInsets.only(top:10.0),
            width:double.infinity,
            height:bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}







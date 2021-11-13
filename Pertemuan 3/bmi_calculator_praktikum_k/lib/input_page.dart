import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inActiveCardColour = Color(0xFF111328);
const bottomContainer = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inActiveCardColour;
  Color femaleCardColour = inActiveCardColour;

  //Gender selectedGender;

  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColour == inActiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inActiveCardColour;
      } else {
        maleCardColour = inActiveCardColour;
      }
    }
    if (gender == Gender.female) {
      if (femaleCardColour == inActiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inActiveCardColour;
      } else {
        femaleCardColour = inActiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //ini widget untuk jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                        //selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      //selectedGender == Gender.male ? maleCardColour : inActiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                        //selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      //selectedGender == Gender.female ? femaleCardColour : inActiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk tinggi
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    //heightt: 200.0,
                    //widthh: 179.0,
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk mengatur berat dan umur
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    //heightt: 200.0,
                    //widthh: 179.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    //heightt: 200.0,
                    //widthh: 179.0,
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk mengatur tombol hitung
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    //heightt: 80.0,
                    //widthh: 179.0,
                  ),
                )
              ],
            )),
            Container(
              color: bottomContainer,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

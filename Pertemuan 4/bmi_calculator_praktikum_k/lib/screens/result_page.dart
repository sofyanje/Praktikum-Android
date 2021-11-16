import 'package:bmi_calculator_praktikum_k/components/bottom_button.dart';
import 'package:bmi_calculator_praktikum_k/components/reusable_card.dart';
import 'package:bmi_calculator_praktikum_k/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';
  const ResultPage({this.bmiResult, this.resultText, this.interPretation});

  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    final ResultPage resultPage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hasil Hitung',
                style: kTitleTextStyle,
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Center(
                        child: Text(
                          resultPage.resultText,
                          style: kResultTextStyle,
                        ),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          resultPage.bmiResult,
                          style: kBMITextStyle,
                        ),
                      )),
                      Expanded(
                          child: Center(
                        child: Text(
                          resultPage.interPretation,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ))
                    ],
                  ),
                )),
            BottomButton(
                buttonText: 'HITUNG ULANG',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                })
          ],
        ),
      ),
    );
    //return Container();
  }
}

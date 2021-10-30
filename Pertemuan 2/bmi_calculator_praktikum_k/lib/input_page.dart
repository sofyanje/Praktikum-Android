import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    colour: Colors.orange,
                    heightt: 200.0,
                    widthh: 179.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.green,
                    heightt: 200.0,
                    widthh: 179.0,
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
                    colour: Colors.blueGrey,
                    heightt: 200.0,
                    widthh: 179.0,
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
                    colour: Colors.lime,
                    heightt: 200.0,
                    widthh: 179.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.cyan,
                    heightt: 200.0,
                    widthh: 179.0,
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk mengatur tombol hitung
                Expanded(
                  child: ReusableCard(
                    colour: Colors.yellow,
                    heightt: 80.0,
                    widthh: 179.0,
                  ),
                )
              ],
            ))
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour, required this.heightt, required this.widthh});

  double heightt, widthh;
  Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, //Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: heightt, //200.0,
      width: widthh, //179.0,
    );
  }
}

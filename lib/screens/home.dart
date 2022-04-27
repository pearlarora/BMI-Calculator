import 'package:flutter/material.dart';
import 'package:bmicalculator/constants/app_constants.dart';
import 'package:bmicalculator/widgets/left_bar.dart';
import 'package:bmicalculator/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: accentColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w300,
                        color: accentColor),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.6))),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w300,
                        color: accentColor),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.6),
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if (_bmiResult > 25) {
                    _textResult = "Over Weight";
                  } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                    _textResult = "Normal Weight";
                  } else {
                    _textResult = "Under Weight";
                  }
                });
              },
              child: Container(
                child: Text("Calculate",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: accentColor)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Text(_bmiResult.toStringAsFixed(2),
                  style: TextStyle(fontSize: 80, color: accentColor)),
            ),
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(_textResult,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: accentColor)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const LeftBar(barWidth: 30),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 60),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 90),
            const SizedBox(
              height: 30,
            ),
            const RightBar(barWidth: 40),
            const SizedBox(
              height: 10,
            ),
            const RightBar(barWidth: 70),
            const SizedBox(
              height: 10,
            ),
            const RightBar(barWidth: 40)
          ],
        ),
      ),
    );
  }
}

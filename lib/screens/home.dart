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
            Container(
              child: Text("Calculate",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: accentColor)),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Text("10",
                  style: TextStyle(fontSize: 80, color: accentColor)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Text("Normal Weight",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: accentColor)),
            ),
            const SizedBox(
              height: 50,
            ),
            const LeftBar(barWidth: 40),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 70),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 100),
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

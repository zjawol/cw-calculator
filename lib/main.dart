import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /*
    Widget create calculator button. Input is the colour, title, and width size
     */
    Widget calculatorBtn(buttonColor, title, [int widthSize = 25]) {
      return Expanded(
        flex: widthSize,
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          padding: EdgeInsets.all(40),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        )
      );
    };

    /*
    Widget calculator display create calculator display.
     */
    Widget calculatorDisplay() {
      return Expanded(
        flex: 2,
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: double.infinity,
          color: Colors.lightBlue[50],
          child: Text(
            "0",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      );
    };

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter Calculator"),
        ),
        body: Column(
          children: [
            calculatorDisplay(),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  calculatorBtn(Colors.grey, 'C', 75),
                  calculatorBtn(Colors.blueGrey, '<-', 25),
                ],
              )
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  calculatorBtn(Colors.black, '7'),
                  calculatorBtn(Colors.black, '8'),
                  calculatorBtn(Colors.black, '9'),
                  calculatorBtn(Colors.blue, '/'),
                ],
              )
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  calculatorBtn(Colors.black, '4'),
                  calculatorBtn(Colors.black, '5'),
                  calculatorBtn(Colors.black, '6'),
                  calculatorBtn(Colors.blue, 'x'),
                ],
              )
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  calculatorBtn(Colors.black, '1'),
                  calculatorBtn(Colors.black, '2'),
                  calculatorBtn(Colors.black, '3'),
                  calculatorBtn(Colors.blue, '-'),
                ],
              )
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  calculatorBtn(Colors.black, '0'),
                  calculatorBtn(Colors.black, '.'),
                  calculatorBtn(Colors.blue, '='),
                  calculatorBtn(Colors.blue, '+'),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}


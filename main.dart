import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      home: Scaffold(
          body: Calculation()
      ),
    );
  }
}

class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  int result;

  @override
  Widget build(BuildContext context) {
    return ResultDisplay(text: '0');
  }
}
class ResultDisplay extends StatelessWidget {
  ResultDisplay({
    required this.text
  });

  final int result;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 80,
        color: Colors.black,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 34
          ),
        )
    );
  }
}
@override
Widget build(BuildContext context) {
  return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black,
      child: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 24),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 34
            ),
          )
      )
  );
}
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter basic calculator',
    home: Scaffold(
        body: Calculation()
    ),
  );
}
class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        )
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter basic calculator',
      home: Scaffold(
          body: Calculation()
      ),
    );
  }
}

class ResultDisplay extends StatelessWidget {
  …
  @override
  Widget build(BuildContext context) {
  return Container(
  width: double.infinity,
  height: 120,
  color: Colors.black,
  child: Container(
  alignment: Alignment.bottomRight,
  padding: EdgeInsets.only(right: 24, bottom: 24),
  child: Text(
  text,
  style: TextStyle(
  color: Colors.white,
  fontSize: 34
  ),
  )
  )
  );
  }
  @override
  Widget build(BuildContext context) {
  return Column(
  children: [
  ResultDisplay(text: '0'),
  Row(
  children: [
  // Here we want to place the buttons of the first Row
  ],
  )
  ]
  );
  }
  import 'package:flutter/material.dart';

  class CalculatorButton extends StatelessWidget {
  CalculatorButton({
  required this.label,
  required this.onTap,
  required this.size,
  this.backgroundColor = Colors.white,
  this.labelColor = Colors.black
  });

  final String label;
  final VoidCallback onTap;
  final double size;
  final Color? backgroundColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
  …
  }
  }
  @override
  Widget build(BuildContext context) {
  return Padding(
  padding: EdgeInsets.all(6),
  child: Container(
  width: size,
  height: size,
  decoration: BoxDecoration(
  boxShadow: [
  BoxShadow(
  color: Colors.grey,
  offset: Offset(1, 1),
  blurRadius: 2
  ),
  ],
  borderRadius: BorderRadius.all(
  Radius.circular(size / 2)
  ),
  color: backgroundColor
  ),
  child: // Label text and other stuff here
  )
  );
  }

  FlatButton(
  shape: CircleBorder(),
  onPressed: onTap,
  child: Center(
  child: Text(
  label,
  style: TextStyle(fontSize: 24, color: labelColor),
  )
  ),
  )
  @override
  Widget build(BuildContext context) {
  return Column(
  children: [
  ResultDisplay(text: '0'),
  Row(
  children: [
  _getButton(text: '7', onTap: () => numberPressed(7)),
  _getButton(text: '8', onTap: () => numberPressed(8)),
  _getButton(text: '9', onTap: () => numberPressed(9)),
  _getButton(text: 'x', onTap: () => operatorPressed('*'), backgroundColor: Color.fromRGBO(220, 220, 220, 1)),
  ],
  ),
  Row(
  children: [
  _getButton(text: '4', onTap: () => numberPressed(4)),
  _getButton(text: '5', onTap: () => numberPressed(5)),
  _getButton(text: '6', onTap: () => numberPressed(6)),
  _getButton(text: '/', onTap: () => operatorPressed('/'), backgroundColor: Color.fromRGBO(220, 220, 220, 1)),
  ],
  ),
  Row(
  children: [
  _getButton(text: '1', onTap: () => numberPressed(1)),
  _getButton(text: '2', onTap: () => numberPressed(2)),
  _getButton(text: '3', onTap: () => numberPressed(3)),
  _getButton(text: '+', onTap: () => operatorPressed('+'), backgroundColor: Color.fromRGBO(220, 220, 220, 1))
  ],
  ),
  Row(
  children: [
  _getButton(text: '=', onTap: calculateResult, backgroundColor: Colors.orange, textColor: Colors.white),
  _getButton(text: '0', onTap: () => numberPressed(0)),
  _getButton(text: 'C', onTap: clear, backgroundColor: Color.fromRGBO(220, 220, 220, 1)),
  _getButton(text: '-', onTap: () => operatorPressed('-'),backgroundColor: Color.fromRGBO(220, 220, 220, 1)),
  ],
  ),
  ]
  );
  }
  ...
  operatorPressed(String operator) {}
  numberPressed(int number) {}
  calculateResult() {}
  clear() {}

  calculateResult() {
  if (operator == null || secondOperand == null) {
  return;
  }
  setState(() {
  switch (operator) {
  case '+':
  result = firstOperand + secondOperand;
  break;
  case '-':
  result = firstOperand - secondOperand;
  break;
  case '*':
  result = firstOperand * secondOperand;
  break;
  case '/':
  if (secondOperand == 0) {
  return;
  }
  result = firstOperand ~/ secondOperand;
  break;
  }

  firstOperand = result;
  operator = null;
  secondOperand = null;
  result = null;
  });
  }
  ResultDisplay(
  text: _getDisplayText(),
  )
  ...
  String _getDisplayText() {
  if (result != null) {
  return '$result';
  }

  if (secondOperand != null) {
  return '$firstOperand$operator$secondOperand';
  }

  if (operator != null) {
  return '$firstOperand$operator';
  }

  if (firstOperand != null) {
  return '$firstOperand';
  }

  return '0';
  }



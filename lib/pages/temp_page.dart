// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:midterm_620710379/temp.dart';


class TempPage extends StatefulWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  final _controller = TextEditingController();
  final _temp1 = CtoF();
  final _temp2 = FtoC();
  final _temp3 = KtoC();
  final _temp4 = CtoK();
  final _temp5 = FtoK();
  final _temp6 = KtoF();

  // state variable
  var _feedbackText = '';

  void Click_CtoF() {
    //print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // เมื่อไม่ใส่เลข
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _temp1.doConvert(temp);
      setState(() {
          _feedbackText = '$temp Celsius = $result Fahrenheit';
      });
    }
  }

  void Click_FtoC() {
    //print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // เมื่อไม่ใส่เลข
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _temp2.doConvert(temp);
      setState(() {
        _feedbackText = '$temp Fahrenheit = $result Celsius';
      });
    }
  }

  void Click_KtoC() {
    //print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // เมื่อไม่ใส่เลข
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _temp3.doConvert(temp);
      setState(() {
        _feedbackText = '$temp Kelvin = $result Celsius';
      });
    }
  }

  void Click_CtoK() {
    //print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // เมื่อไม่ใส่เลข
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _temp4.doConvert(temp);
      setState(() {
        _feedbackText = '$temp Celsius = $result Kelvin';
      });
    }
  }

  void Click_FtoK() {
    //print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // เมื่อไม่ใส่เลข
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _temp5.doConvert(temp);
      setState(() {
        _feedbackText = '$temp Fahrenheit = $result Kelvin';
      });
    }
  }

  void Click_KtoF() {
    //print('Button clicked!');
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      // เมื่อไม่ใส่เลข
      setState(() {
        _feedbackText = 'Please enter a value to convert.';
      });
    } else {
      var result = _temp6.doConvert(temp);
      setState(() {
        _feedbackText = '$temp Kelvin = $result Fahrenheit';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            // Callback function
            ElevatedButton(
              onPressed: Click_CtoF,
              child: const Text('Celsius to Fahrenheit'),
            ),
            ElevatedButton(
              onPressed: Click_FtoC,
              child: const Text('Fahrenheit to Celsius'),
            ),
            ElevatedButton(
              onPressed: Click_KtoC,
              child: const Text('Kelvin to Celsius'),
            ),
            ElevatedButton(
              onPressed: Click_CtoK,
              child: const Text('Celsius to Kelvin'),
            ),
            ElevatedButton(
              onPressed: Click_FtoK,
              child: const Text('Fahrenheit to Kelvin'),
            ),
            ElevatedButton(
              onPressed: Click_KtoF,
              child: const Text('Kelvin to Fahrenheit'),
            ),
            Text(_feedbackText),

          ],
        ),
      ),
    );
  }
}
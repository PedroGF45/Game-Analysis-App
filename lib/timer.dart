import 'dart:async';
import 'package:flutter/material.dart';


class TimerScreen extends StatefulWidget {
  @override
  State<TimerScreen> createState() => _TimerState();
}

class _TimerState extends State<TimerScreen> {
  int _timerSeconds = 0;
  int _timerMinutes = 0;
  String _formattedSeconds = '00';
  String _formattedMinutes = '00';
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timerSeconds++;

        // If the timer reaches 60 seconds, reset to 0 and add 1 to minutes
        if (_timerSeconds == 60) {
          _timerSeconds = 0;
          _timerMinutes++;
        }

        // Format the number into a string
        _formattedSeconds = _formatNumber(_timerSeconds);
        _formattedMinutes = _formatNumber(_timerMinutes);

      });
    });
  }

  String _formatNumber(int number) {
    String _number;
    if (number < 10) {
      _number = number.toString().padLeft(2, '0');
    } else {
      _number = number.toString();
    }
    return _number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container( 
          alignment: Alignment.center,
          width: 100,
          height: 50,
          
          padding: EdgeInsets.all(10.0),
          // Set the border radius here
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue,
            ),
          child:
            Text(
              '$_formattedMinutes:$_formattedSeconds',
              style: TextStyle(fontSize: 20),
            )
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }
}
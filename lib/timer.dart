import 'dart:async';
import 'package:flutter/material.dart';


class TimerScreen extends StatefulWidget {

  final VoidCallback onTimerReached45Minutes;

  TimerScreen({required this.onTimerReached45Minutes});

  @override
  State<TimerScreen> createState() => _TimerState();

  // Public method to access timerMinutes
  int get timerMinutes => _TimerState().timerMinutes;
}

class _TimerState extends State<TimerScreen> {
  int _timerSeconds = 00;
  int _timerMinutes = 00;
  String _formattedSeconds = '00';
  String _formattedMinutes = '00';
  late Timer _timer;
  Color _color = Colors.blue;

  // get timerMinutes
  int get timerMinutes => _timerMinutes;

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

        // If the timer reaches 45 minutes, its half time
        if (_timerMinutes == 45) {
          _color = Colors.red;
          widget.onTimerReached45Minutes();
        }

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
              color: _color,
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

   void _stopTimer() {
    _timer.cancel(); // Cancel the timer to stop it
  }

  // Public method to access and stop the timer
  void stopTimer() {
    _stopTimer();
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }
}
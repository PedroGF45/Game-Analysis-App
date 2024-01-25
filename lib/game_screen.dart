import 'package:flutter/material.dart';
import 'package:game_analysis_app/timer.dart';

class GameScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Screen'),
      ),
      body: TimerScreen(),
    );
  } 
}
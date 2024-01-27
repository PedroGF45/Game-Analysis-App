import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:game_analysis_app/chart_bar.dart';
import 'package:game_analysis_app/chart.dart';
import 'package:game_analysis_app/home_screen.dart';

class HalfTimeScreen extends StatefulWidget {

  // values to store
  int _successfulPasses = 0;
  int _unsuccessfulPasses = 0;
  int _shotsOnTarget = 0;
  int _shotsOffTarget = 0;
  int _ballsLost = 0;
  int _ballsRecovered = 0;
  int _corners = 0;
  int _freeKicks = 0;
  int _offSides = 0;
  int _foulsCommitted = 0;
  int _foulsSuffered = 0;
  List<ChartBar> _chartPasses = [];
  List<ChartBar> _chartShots = [];
  List<ChartBar> _chartBalls = [];
  List<ChartBar> _chartSetPieces = [];
  List<ChartBar> _chartFouls = [];

  HalfTimeScreen(_successfulPasses, _unsuccessfulPasses, _shotsOnTarget, _shotsOffTarget, _ballsLost, _ballsRecovered, _corners, _freeKicks, _offSides, _foulsCommitted, _foulsSuffered) {
    this._successfulPasses = _successfulPasses;
    this._unsuccessfulPasses = _unsuccessfulPasses;
    this._shotsOnTarget = _shotsOnTarget;
    this._shotsOffTarget = _shotsOffTarget;
    this._ballsLost = _ballsLost;
    this._ballsRecovered = _ballsRecovered;
    this._corners = _corners;
    this._freeKicks = _freeKicks;
    this._offSides = _offSides;
    this._foulsCommitted = _foulsCommitted;
    this._foulsSuffered = _foulsSuffered;

    _chartPasses = [
      ChartBar('Successful Passes', _successfulPasses),
      ChartBar('Unsuccessful Passes', _unsuccessfulPasses),
    ];

    _chartShots = [
      ChartBar('Shots on Target', _shotsOnTarget),
      ChartBar('Shots off Target', _shotsOffTarget),
    ];

    _chartBalls = [
      ChartBar('Balls Lost', _ballsLost),
      ChartBar('Balls Recovered', _ballsRecovered),
    ];

    _chartSetPieces = [
      ChartBar('Corners', _corners),
      ChartBar('Free Kicks', _freeKicks),
      ChartBar('Off Sides', _offSides),
    ];

    _chartFouls = [
      ChartBar('Fouls Committed', _foulsCommitted),
      ChartBar('Fouls Suffered', _foulsSuffered),
    ];
  }

  @override
  _HalfTimeScreenState createState() => _HalfTimeScreenState();
}

class _HalfTimeScreenState extends State<HalfTimeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        // show values
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Passes
                Chart(data: widget._chartPasses, title: 'Passes'),

                // Shots
                Chart(data: widget._chartShots, title: 'Shots'),
              ]
            ),
            SizedBox(height:20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Balls
                Chart(data: widget._chartBalls, title: 'Balls'),

                // Set Pieces
                Chart(data: widget._chartSetPieces, title: 'Set Pieces'),

                // Fouls
                Chart(data: widget._chartFouls, title: 'Fouls'),  
              ]
            ),
          ],
        ),
      ),

      // button to return to home screen
floatingActionButton: FloatingActionButton.extended(
  onPressed: () {
    // Update the button text when pressed
    setState(() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: "HOME SCREEN",)), // Replace YourHomeScreen with your actual home screen widget
        (route) => false, // Remove all routes from the stack
      );
    });
  },
  label: Text('Return to Main Screen'),
  icon: Icon(Icons.arrow_back),
  backgroundColor: Colors.blue,
),
    );
  }
}
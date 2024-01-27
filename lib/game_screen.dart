import 'package:flutter/material.dart';
import 'package:game_analysis_app/timer.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Timer
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              child: TimerScreen(),
            ),

            // first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Successful Passes button
                ElevatedButton(
                  onPressed: () {
                      // Update the button text when pressed
                      setState(() {
                        _successfulPasses++;
                      });
                  },
                  child: Text('Successful Passes: $_successfulPasses'),
                ),

                // Unsuccessful Passes button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _unsuccessfulPasses++;
                    });
                  },
                  child: Text('Unsuccessful Passes: $_unsuccessfulPasses'),
                ),

                // Ball Lost button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _ballsLost++;
                    });
                  },
                  child: Text('Ball Lost: $_ballsLost'),
                ),
              ],
            ),
            SizedBox(height:20),
            // second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Shot on Target button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _shotsOnTarget++;
                    });
                  },
                  child: Text('Shot on Target: $_shotsOnTarget'),
                ),

                // Shot off Target button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _shotsOffTarget++;
                    });
                  },
                  child: Text('Shot off Target: $_shotsOffTarget'),
                ),

                // Ball Recovered button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _ballsRecovered++;
                    });
                  },
                  child: Text('Ball Recovered: $_ballsRecovered'),
                ),
              ],
            ),
            SizedBox(height:20),
            // third row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Corner button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _corners++;
                    });
                  },
                  child: Text('Corner: $_corners'),
                ),

                // Free Kick button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _freeKicks++;
                    });
                  },
                  child: Text('Free Kick: $_freeKicks'),
                ),

                // Offside button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _offSides++;
                    });
                  },
                  child: Text('Offside: $_offSides'),
                ),
              ],
            ),
            SizedBox(height:20),
            // fourth row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Foul Committed button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _foulsCommitted++;
                    });
                  },
                  child: Text('Foul Committed: $_foulsCommitted'),
                ),

                // Foul Suffered button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _foulsSuffered++;
                    });
                  },
                  child: Text('Foul Suffered: $_foulsSuffered'),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended( 
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text('Go back!'),  
        icon: const Icon(Icons.arrow_back),
      ),
    );
  } 
}
import 'package:flutter/material.dart';
import 'package:game_analysis_app/timer.dart';

class GameScreen extends StatelessWidget {

  // values to store
  int _successfulPasses = 0;
  int _unsuccessfulPasses = 0;
  int _shotInTarget = 0;
  int _shotOffTarget = 0;
  int _ballLost = 0;
  int _ballRecovered = 0;
  int _corner = 0;
  int _freeKick = 0;
  int _offSide = 0;
  int _foulCommitted = 0;
  int _foulSuffered = 0;

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
                    _successfulPasses++;
                  },
                  child: const Text('Successful Passes: $_successfulPasses'),
                ),

                // Unsuccessful Passes button
                ElevatedButton(
                  onPressed: () {
                    _unsuccessfulPasses++;
                  },
                  child: const Text('Unsuccessful Passes'),
                ),

                // Ball Lost button
                ElevatedButton(
                  onPressed: () {
                    _ballLost++;
                  },
                  child: const Text('Ball Lost'),
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
                    _shotInTarget++;
                  },
                  child: const Text('Shot on Target'),
                ),

                // Shot off Target button
                ElevatedButton(
                  onPressed: () {
                    _shotOffTarget++;
                  },
                  child: const Text('Shot off Target'),
                ),

                // Ball Recovered button
                ElevatedButton(
                  onPressed: () {
                    _ballRecovered++;
                  },
                  child: const Text('Ball Recovered'),
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
                    _corner++;
                  },
                  child: const Text('Corner'),
                ),

                // Free Kick button
                ElevatedButton(
                  onPressed: () {
                    _freeKick++;
                  },
                  child: const Text('Free Kick'),
                ),

                // Offside button
                ElevatedButton(
                  onPressed: () {
                    _offSide++;
                  },
                  child: const Text('Offside'),
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
                    _foulCommitted++;
                  },
                  child: const Text('Foul Committed'),
                ),

                // Foul Suffered button
                ElevatedButton(
                  onPressed: () {
                    _foulSuffered++;
                  },
                  child: const Text('Foul Suffered'),
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
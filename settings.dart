import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  backgroundColor: Color.fromARGB(188, 37, 12, 53),
  title: Text('Guide page',),
  
),
    body: Text('R button resets both the timer S starts the timer P pauses the timer it can be resumed by tapping on the S +1 is tapped to add one to the previous scores or to start the count '
    '+2 is tapped when you want to add 2  points to the previous scores or to start  the +3 too add 3 points to the scores either to start or to add to the previous score  the'
    ' 0 button counts for team fouls on each side the reset sets all the scores including the fouls to 0 tap on the textbox to fill team names',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
    
     );
 
     
    
  }
}
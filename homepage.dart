import 'dart:ffi';

import 'dart:ui';
import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Timer _timer;

  int fouls2 = 0;
  int timers = 0;
  int seconds = 0;
  int minutes = 0;
  int hours = 0;
  int reverse = 24;
  int team = 0;
  int fours = 0;
  int guide = 0;
  int score2 = 0;
  int hipe = 0;
  int score = 0;
  int undo = 0;
  String mycontroller2 = "";
  String mycontroller4 = "";
  void toreverse() {
    0timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        reverse--;
      });
    });
  }

  void tostartTimer() {
    0timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
        reverse--;
        if (reverse == 0) {
          reverse = 24;
        }
        if (_seconds == 60) {
          minutes++;
          seconds = 0;
          if (minutes == 60) {
            hours++;
            minutes = 0;
          }
        }
      });
    });
  }

  void fouls(int fours) {
    setState(() {
      fours = guide++;

      ;
      ;
    });
  }

  void secondfoul(int fouls2) {
    setState(() {
      fouls2 = team++;
    });
  }

  void addPoints(int points) {
    setState(() {
      score += points;
      undo++;
    });

    {
      ;
    }
    ;
  }

  void adding(int point2) {
    setState(() {
      score2 += point2;
    });
  }

  void stopTimer() {
    0timer.cancel();
  }

  void resettimer() {
    setState(() {
      seconds=0;
      minutes = 0;
      hours = 0;
     
    });
    timer?.cancel();
  }

  void scorereset(int score2) {
    setState(() {
      score2 = 0;
      team = 0;
    });
  }

  void reset(int score) {
    setState(() {
      guide = 0;
      score = 0;
    });
  }

  TextEditingController mycontroller = TextEditingController();
  void teamallign() {
    setState(() {
      mycontroller2 = mycontroller.text;
      mycontroller4 = mycontroller5.text;
      mycontroller.clear();
      mycontroller5.clear();
    });
    Navigator.of(context).pop();
  }

  TextEditingController mycontroller5 = TextEditingController();
  void secondteam() {
    setState(() {});
  }

  void forst() {
    setState(() {
      timers = reverse = 24;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Text(
                  '$minutes' '.' '$_seconds ',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 221, 3, 3)),
                ),
              
                SizedBox(
                    width: 45,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(8, 0, 0, 0)),
                      onPressed: _startTimer,
                      child: Text(
                        'S',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                SizedBox(
                    height: 40,
                    width: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(0, 5, 0, 8)),
                      onPressed: stopTimer,
                      child: Text(
                        'P',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )),
                Text(
                  ' $reverse ',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 236, 5, 5)),
                )
              ],
            )),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 221, 211, 170),
        child: Column(children: [
          DrawerHeader(
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              size: 40,
            ),
            title: Text("I N F O"),
            onTap: () {
              Navigator.pushNamed(context, '/realpage');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.rule,
              size: 40,
            ),
            title: Text("G U I D E"),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Team 1 name")),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: mycontroller5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Team 2 name"),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(0, 0, 0, 0)),
              onPressed: teamallign,
              child: Text(
                "set",
                style: TextStyle(color: Colors.black),
              )),
        ]),
      ),
      body: Stack(children: [
    
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/do.WEBP',
            ),
            fit: BoxFit.cover,
          ),
        )),
          SizedBox(
                  height: 40,
                  width: 200,
                  child:Padding(padding: EdgeInsets.only(left: 3),child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(10, 0, 0, 0)),
                    onPressed: resettimer,
                    child: Text(
                      'R',
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                   ) ),
                  ),
                ),
        Column(children: [ SizedBox(
                  height: 40,
                  width: 290,
                  child:Padding(padding: EdgeInsets.only(left: 210),child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(10, 0, 0, 0)),
                    onPressed: forst,
                    child: Text(
                      'R',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                  )  ),
                  ),
                ),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Row(children: [
              Row(children: [
                Container(
                    width: 160,
                    height: 90,
                    child: Text(
                      '$mycontroller2',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 248, 248, 248),
                          fontWeight: FontWeight.bold),
                    )),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(
                  child: Text(
                    'VS',
                    style: TextStyle(
                        color: Color.fromARGB(255, 247, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
           Padding(padding: EdgeInsets.only(left: 42),child:    Container(
                  width: 120,
                  height: 90,
                  child: Text(
                    '$mycontroller4',
                    style: TextStyle(
                        color: Color.fromARGB(255, 243, 240, 240),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                 ) ))
            ]),
            margin: EdgeInsets.all(5),
            width: 500,
            height: 130,
            decoration: BoxDecoration(
                color: Color.fromARGB(252, 146, 126, 126),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                    'images/hh.JPG',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 125, 2, 226)),
                onPressed: () => addPoints(1),
                child: Text(
                  '+1',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(251, 248, 248, 248)),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 88, 1, 129)),
                onPressed: () => adding(1),
                child: Text(
                  '+1',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 239, 239, 240)),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(3, 50, 5, 63)),
                onPressed: () => addPoints(2),
                child: Text(
                  '+2',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 252, 251, 251)),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 36, 1, 44)),
                onPressed: () => adding(2),
                child: Text(
                  '+2',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 251, 251, 252)),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 174, 54, 244)),
                onPressed: () => addPoints(3),
                child: Text(
                  '+3',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(253, 255, 253, 253)),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(12, 146, 62, 202)),
                onPressed: () => adding(3),
                child: Text(
                  '+3',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 245, 244, 247)),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 45, 11, 61)),
                onPressed: () => fouls(1),
                child: Text(
                  guide.toString(),
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(232, 245, 244, 247)),
                )),
            Text(
              'fouls',
              style: TextStyle(
                color: Color.fromARGB(255, 247, 5, 5),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 163, 5, 255)),
                onPressed: () => secondfoul(1),
                child: Text(
                  '$team',
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 236, 235, 236)),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(26, 85, 30, 136)),
                onPressed: () => reset(score = 0),
                child: Text(
                  'Reset',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 244, 244, 245)),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(22, 56, 7, 58)),
                onPressed: () => scorereset(score2 = 0),
                child: Text(
                  'Reset',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 230, 221, 236)),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              score.toString(),
              style: TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(255, 245, 11, 11),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              score2.toString(),
              style: TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(255, 250, 9, 9),
                  fontWeight: FontWeight.w900),
            )
          ])
        ])
      ]),
    );
  }
}

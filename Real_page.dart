import 'package:flutter/material.dart';

class realPage extends StatelessWidget {
  const realPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromARGB(204, 50, 21, 77),
      body: Column(
        children: [
          Text(
            'This app was purposely made for calculating basketball scores  \n for more info or assist contact me on\n +233 551662314',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 34, color: Colors.white),
          )
        ],
      ),
    );
  }
}

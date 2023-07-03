// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'custom/yellowText.dart';
import 'custom/floatingButton.dart';

void main() => runApp(const MaterialApp(
      home: NinjaCard(),
      debugShowCheckedModeBanner: false,
    ));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/portfolio.png'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            YellowText(text: 'Junayed(devjunayed)'),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            YellowText(text: level.toString()),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'junayed@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          FloatingButton(
              sym: '-',
              side: 'right',
              method: () {
                setState(() {
                  level = level - 1;
                });
              }),
          FloatingButton(
              sym: '+',
              side: 'left',
              method: () {
                setState(() {
                  level = level + 1;
                });
              }),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class WorkContainer extends StatelessWidget{
  const WorkContainer({ super. key, required this.text1, required this.text2});

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          )
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
                width: 52,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: TextStyle( fontSize: 20),
                ),
                Text("AM", style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
          Container(
            width: 10,
            height: 60,
            color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),
            // Màu Random 
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text2,
                  style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),

                ),
                Text("lorem ipsum dolor", style: TextStyle(fontSize: 18, color: Colors.grey))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
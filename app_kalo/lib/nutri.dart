import 'package:flutter/material.dart';

class nutri extends StatelessWidget {
  final String name;
  final int amoun, total;
  final Color color;
  const nutri({
    super.key,
    required this.name,
    required this.amoun,
    required this.color,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(right: 15),
      height: 90,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          LinearProgressIndicator(
            value: amoun / total,
            backgroundColor: Colors.grey[300],
            color: color,
            minHeight: 8,
          ),
          Text("$amoun/${total}g", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}

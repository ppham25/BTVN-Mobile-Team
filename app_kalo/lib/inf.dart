import 'package:flutter/cupertino.dart';

class inf extends StatelessWidget {
  final String name;
  final double num;
  final Color color;
  const inf({
    super.key,
    required this.name,
    required this.num,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 120,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(name, style: TextStyle(fontSize: 24)),
          ),
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(color: color),
              ),
              SizedBox(
                child: Text("  ${num}g", style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

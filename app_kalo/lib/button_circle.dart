import 'package:flutter/material.dart';

class button_cir extends StatelessWidget {
  final IconData icon;
  const button_cir({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Center(child: Icon(icon, color: Colors.black)),
    );
  }
}

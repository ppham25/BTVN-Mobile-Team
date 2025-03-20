import 'package:flutter/material.dart';

class Daycontainer extends StatefulWidget {
  const Daycontainer({ super. key , required this.text1, required this.text2});

  final String text1, text2;

  @override
  State<Daycontainer> createState() => _DaycontainerState();
}

class _DaycontainerState extends State<Daycontainer> {
  late bool _hasBorder;
  @override
  void initState(){
    super.initState();
    _hasBorder= true;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: _hasBorder ? Border.all(color: Colors.grey) : null,
        borderRadius: BorderRadius.circular(16),
        color: _hasBorder ? null : Colors.greenAccent,
      ),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () => setState(() {
          _hasBorder = !_hasBorder;
        }),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                widget.text1,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),
            ),
            Text(
                widget.text2,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.indigo,
                ),
            )
          ]

        ),
      )
    );
  }
}
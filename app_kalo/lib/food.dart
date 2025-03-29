import 'package:app_kalo/inf.dart';
import 'package:flutter/material.dart';

class food extends StatelessWidget {
  final String name, edit;
  final double pro, fat, car;
  final int kcal;
  const food({
    super.key,
    required this.name,
    required this.kcal,
    required this.pro,
    required this.fat,
    required this.car,
    required this.edit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(color: Colors.black12),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 300,
                child: Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ),
              Container(
                width: 60,
                alignment: Alignment.centerRight,
                child: Icon(Icons.edit, size: 30),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 50,
                  child: Text(kcal.toString(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "kcal",
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  alignment: Alignment.centerRight,
                  child: Text("${edit}g", style: TextStyle(color: Colors.grey, fontSize: 24),),
                ),
              ),
            ],
          ),

          Row(
            children: [
              inf(name: "Protein", num: pro, color: Colors.deepPurpleAccent),
              inf(name: "Fat", num: fat, color: Colors.orange),
              inf(name: "Carbs", num: car, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}

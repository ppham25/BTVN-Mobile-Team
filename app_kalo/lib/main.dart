import 'package:app_kalo/button_circle.dart';
import 'package:app_kalo/food.dart';
import 'package:app_kalo/nutri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Breakfast",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(left: 15),
            child: button_cir(icon: Icons.chevron_left),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: button_cir(icon: Icons.share),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 15, top: 10, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 55,
                          child: Text(
                            "Breakfast",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 35,
                          child: Text(
                            "Today",
                            style: TextStyle(fontSize: 24, color: Colors.black87,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 81,
                      height: 90,
                      child: Icon(
                        Icons.add,
                        size: 60,
                        weight: 1,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.grey, thickness: 2),
                Row(
                  children: [
                    Container(
                      height: 90,
                      width: 130,
                      alignment: Alignment.centerLeft,
                      child: Text("452", style: TextStyle(fontSize: 70)),
                    ),
                    Container(
                      height: 80,
                      width: 125,
                      alignment: Alignment.bottomLeft,
                      child: Text("kcal", style: TextStyle(fontSize: 30)),
                    ),
                    SizedBox(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text("Normal", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    nutri(name: "Protein", num: 13, color: Colors.deepPurpleAccent, max: 80,),
                    nutri(name: "Fat", num: 20, color: Colors.orange, max: 60),
                    nutri(name: "Carbs", num: 19, color: Colors.black87, max: 200,),
                  ],
                ),
                food(name: "Fried eggs", kcal: 378, pro: 12, fat: 17, car: 17, edit: "100",),
                food(name: "Grilled Chicken", kcal: 165, pro: 31, fat: 3.6, car: 0, edit: "150",),
                food(name: "Salmon", kcal: 208, pro: 20, fat: 13, car: 0, edit: "120",),
                food(name: "Boiled Rice", kcal: 130, pro: 2.7, fat: 0.3, car: 28, edit: "200",),
                food(name: "Avocado", kcal: 160, pro: 2, fat: 15, car: 9, edit: "100",),
                food(name: "Banana", kcal: 89, pro: 1.1, fat: 0.3, car: 23, edit: "118",),
                food(name: "Steak", kcal: 271, pro: 25, fat: 19, car: 0, edit: "180",),
                food(name: "Scrambled Eggs", kcal: 149, pro: 12, fat: 10, car: 1.6, edit: "100",),
                food(name: "Pasta", kcal: 131, pro: 5, fat: 1.1, car: 25, edit: "150",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

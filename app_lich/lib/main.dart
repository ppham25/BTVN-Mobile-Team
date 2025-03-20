import 'package:flutter/material.dart';
import 'package:flutter_application_2/work_container.dart';
import 'day_container.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
              body: Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView( // đê cuôn đuoc theo dọc
                        scrollDirection: Axis.horizontal, // cộc đc theo ngang
                        child: Row(
                          children: [
                           Daycontainer(
                               text1: "15",
                               text2: "Mon",
                           ),
                            Daycontainer(
                                text1: "16",
                                text2: "Tus",
                            ),
                            Daycontainer(
                                text1: "17",
                                text2: "Wed",

                            ),
                            Daycontainer(
                              text1: "18",
                              text2: "Thu",
                            ),
                            Daycontainer(
                              text1: "18",
                              text2: "Thu",

                            ),
                            Daycontainer(
                              text1: "18",
                              text2: "Thu",
                            ),
                          ],
                        ),
                      ),
                      WorkContainer(text1: "09:00", text2: "Ăn sáng với Martha"),
                      WorkContainer(text1: "09:30", text2: "Họp Marketing"),
                      WorkContainer(text1: "11:00", text2: "Gọi điện thoại"),
                      WorkContainer(text1: "11:00", text2: "Gọi điện thoại"),
                      WorkContainer(text1: "11:00", text2: "Gọi điện thoại"),
                      WorkContainer(text1: "11:00", text2: "Gọi điện thoại"),
                      WorkContainer(text1: "11:00", text2: "Gọi điện thoại")
                      // Nếu nhiều cái ( 100) trong lis thì dùng listView.builder hoặc ListView.separated
                    ],
                  ),
                ),
              ),

        )
        )
    );
  }
}


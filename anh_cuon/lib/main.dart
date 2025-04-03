import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Anh"), centerTitle: true),
          body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  anh_KSH(),
                  SizedBox(height: 30),
                  anh_Dom(),
                  SizedBox(height: 30),
                  anh_Virut(),
                  anh_tron(),
                  anh_tron2()


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class anh_Virut extends StatelessWidget {
  const anh_Virut({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/ssurivDa_xac_minh_Theo_doi_1080w.webp',
                  height: 300,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/ssurivDa_xac_minh_Theo_doi_1080w.webp',
                  height: 300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class anh_Dom extends StatelessWidget {
  const anh_Dom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/images/66429286699576380505494477148489805987840n-15654969353332116459689.jpg',
                  width: 381,
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/images/66429286699576380505494477148489805987840n-15654969353332116459689.jpg',
                  width: 381,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class anh_KSH extends StatelessWidget {
  const anh_KSH({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 214,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 145,
                width: 102,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Image.asset('assets/images/KSHH.jpg', width: 214),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 145,
                width: 102,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Image.asset('assets/images/KSHH.jpg', width: 214),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                height: 145,
                width: 102,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Image.asset('assets/images/KSHH.jpg', width: 214),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 145,
                width: 102,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Image.asset('assets/images/KSHH.jpg', width: 214),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class anh_tron extends StatelessWidget{
  const anh_tron({ super. key });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/0a85c9f3854a2a5e1a9db5a7f3df7040.jpg'),
        Positioned(
          left: 30,
          top: 70,
          child: Container(height: 70, width: 70,  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
        )
      ],
    );
  }
}
class anh_tron2 extends StatelessWidget{
  const anh_tron2({ super. key });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/463019020_8525445397533467_7479276124099377720_n.jpg'),
        Positioned(
          left: 170,
          top: 145,
          child: Container(height: 30, width: 30, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),),
        )
      ],
    );
  }
}
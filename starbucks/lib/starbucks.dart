import 'package:flutter/material.dart';
import 'package:starbucks/constant/color.dart';
import 'package:starbucks/screen/first_screen.dart';
import 'package:starbucks/screen/second_screen.dart';
import 'package:starbucks/screen/third_screen.dart';

class Starbucks extends StatefulWidget {
  const Starbucks({super.key});

  @override
  State<Starbucks> createState() => _StarbucksState();
}

class _StarbucksState extends State<Starbucks> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          FirstScreen(),
          SecondScreen(),
          ThirdScreen(),
          Center(child: Text("네번째 스크린")),
          Center(child: Text("다섯번째 스크린")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");

          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:miso/constant/color.dart';
import 'package:miso/screen/first_screen.dart';
import 'package:miso/screen/fourth_screen.dart';
import 'package:miso/screen/second_screen.dart';
import 'package:miso/screen/third_screen.dart';

class Miso extends StatefulWidget {
  const Miso({super.key});

  @override
  State<Miso> createState() => _MisoState();
}

class _MisoState extends State<Miso> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
            FourthScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (newIndex) {
            print("선택된 인덱스 : $newIndex");
            setState(() {
              currentIndex = newIndex;
            });
          },
          selectedItemColor: primaryColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedFontSize: 12,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: '예약하기',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.redeem),
              label: '친구 추천',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '나의 정보',
            ),
          ],
        ),
      ),
    );
  }
}

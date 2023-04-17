import 'package:flutter/material.dart';
import 'package:miso/constant/color.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    // 기기 높이의 20%
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    '대한민국 1등 홈서비스\n미소를 만나보세요!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('예약하기 버튼 클릭');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // 최소 너비
                        children: [
                          Icon(
                            Icons.add,
                            color: primaryColor,
                          ),
                          SizedBox(width: 6),
                          Text(
                            '예약하기',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 40,
                child: GestureDetector(
                  onTap: () {
                    print('서비스 상세정보 클릭');
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Text(
                      '서비스 상세정보',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

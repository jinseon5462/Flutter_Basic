import 'package:flutter/material.dart';
import 'package:miso/constant/color.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Text(
                      '예약내역',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 64),
                    Row(
                      children: [
                        Icon(
                          Icons.error,
                          color: primaryColor,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '예약된 서비스가 아직 없어요. 지금 예약해보세요!',
                              style: TextStyle(fontSize: 100),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),

                    // 예약하기 버튼
                  ],
                ),
              ),
              Positioned(
                bottom: 18,
                right: 25,
                left: 25,
                child: Container(
                  width: double.infinity,
                  height: 58,
                  color: primaryColor,
                  alignment: Alignment.center,
                  child: Text(
                    '예약하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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

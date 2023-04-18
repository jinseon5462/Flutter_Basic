import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '나의 정보',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '010-2595-5462',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                onTap: () {
                  print('주소 관리 클릭');
                },
                contentPadding: EdgeInsets.all(0),
                leading: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  '주소 관리',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print('결제 수단 클릭');
                },
                contentPadding: EdgeInsets.all(0),
                leading: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  '결제 수단 관리',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print('공지사항 클릭');
                },
                contentPadding: EdgeInsets.all(0),
                leading: Icon(
                  Icons.volume_mute_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  '공지사항',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print('문의사항 클릭');
                },
                contentPadding: EdgeInsets.all(0),
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.black,
                ),
                title: Text(
                  '문의사항',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  final String cardImgUrl = "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pay",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            child: Icon(
              Icons.list_rounded,
              color: Colors.grey,
            ),
            onTap: () => print("메뉴 클릭"),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.85,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.network(cardImgUrl),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 70,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => print("Coupon 선택"),
                    child: Text(
                      "Coupon",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 12,
                  width: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => print("e-Gift Item 선택"),
                    child: Text(
                      'e-Gift Item',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

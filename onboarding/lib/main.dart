import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
void main() async {
  // main함수에서 async를 사용하려면 필요함
  WidgetsFlutterBinding.ensureInitialized();

  // shared_preferences 인스턴스 생성
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isOnboarded = prefs.getBool("isOnboarded") ?? false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "NotoSansKR",
      ),
      home: isOnboarded ? HomePage() : OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "빠른 개발",
            body: "Flutter의 hot reload는 쉽고 UI 빌드를 도와줍니다.",
            image: Padding(
              padding: EdgeInsets.all(30),
              child: Image.network(
                  "https://user-images.githubusercontent.com/26322627/143761841-ba5c8fa6-af01-4740-81b8-b8ff23d40253.png"),
            ),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          PageViewModel(
            title: "표현력 있고 유연한 UI",
            body: "Flutter에 내장된 아름다운 위젯들로 사용자를 기쁘게 하세요.",
            image: Image.network(
                "https://user-images.githubusercontent.com/26322627/143762620-8cc627ce-62b5-426b-bc81-a8f578e8549c.png"),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
        next: Text(
          "Next",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        done: Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onDone: () {
          prefs.setBool("isOnboarded", true);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HomePage"),
        actions: [
          GestureDetector(
            child: Icon(Icons.delete),
            onTap: () {
              prefs.clear();
              print("clear");
            },
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Text(
          "환영합니다.",
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

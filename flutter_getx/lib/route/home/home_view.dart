import 'package:flutter/material.dart';
import 'package:flutter_getx/component/loading_widget.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Card(
                  margin: EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/flutter.png",
                          width: 24,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text("home.card.1".tr),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlutterLogo(),
                          const SizedBox(height: 16),
                          Text("home.card.2".tr),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.flutter_dash,
                            color: Colors.lightBlue,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text("home.card.3".tr),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Obx(() => LoadingWidget(controller.isLoading.value)),
          ],
        ),
      ),
    );
  }
}

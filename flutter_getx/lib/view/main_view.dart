import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/main_controller.dart';
import 'package:flutter_getx/route/route_info.dart';
import 'package:get/get.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(controller.title.value),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Obx(() => RouteInfo.navBarPages[controller.navBarIndex.value]),
      ),
      bottomNavigationBar: PageTransitionSwitcher(
        transitionBuilder: (Widget child, Animation<double> anim,
            Animation<double> secondAnim) {
          return FadeThroughTransition(
            animation: anim,
            secondaryAnimation: secondAnim,
            child: child,
          );
        },
        child: Obx(() => NavigationBar(
              selectedIndex: controller.navBarIndex.value,
              onDestinationSelected: controller.onChangeNavBar,
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home_filled),
                  label: "navBar.home".tr,
                ),
                NavigationDestination(
                  icon: Icon(Icons.list_alt),
                  label: "navBar.post".tr,
                ),
                NavigationDestination(
                  icon: Icon(Icons.photo),
                  label: "navBar.photo".tr,
                ),
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_getx/route/home/home_view.dart';
import 'package:flutter_getx/route/photo/photo_view.dart';
import 'package:flutter_getx/route/post/post_view.dart';
import 'package:flutter_getx/view/main_view.dart';
import 'package:get/get.dart';

class RouteInfo {
  static const String routeRoot = "/";

  static List<GetPage> pages = [
    GetPage(
      name: routeRoot,
      page: () => const MainView(),
    )
  ];

  static List<Widget> navBarPages = [
    HomeView(),
    PhotoView(),
    PostView(),
  ];
}

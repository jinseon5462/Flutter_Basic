import 'package:get/get.dart';

class MainController extends GetxController {
  RxString title = "title".tr.obs;
  RxInt navBarIndex = 0.obs;

  void onChangeNavBar(int index) {
    if (navBarIndex != index) {
      navBarIndex(index);
      switch (index) {
        case 1:
          title("posts.title".tr);
          break;
        case 2:
          title("photos.title".tr);
          break;
        default:
          title("title".tr);
      }
    }
  }
}

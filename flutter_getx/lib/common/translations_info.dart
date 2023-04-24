import 'package:get/get.dart';

class TranslationsInfo extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {"en_US": enUS, "ko": ko};

  final Map<String, String> enUS = {
    "title": "Flutter GetX",
    "posts.title": "Post",
    "photos.title": "Photo",
    "navBar.home": "Home",
    "navBar.post": "Post",
    "navBar.photo": "Photo",
    "home.card.1": "Build apps for any screen",
    "home.card.2":
        "Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
    "home.card.3":
        "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
  };
  final Map<String, String> ko = {
    "title": "플러터 GetX",
    "posts.title": "포스트",
    "photos.title": "사진첩",
    "navBar.home": "홈",
    "navBar.post": "포스트",
    "navBar.photo": "사진첩",
    "home.card.1": "Build apps for any screen",
    "home.card.2":
        "Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.",
    "home.card.3":
        "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
  };
}

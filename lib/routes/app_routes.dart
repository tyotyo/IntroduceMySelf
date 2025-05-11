import 'package:taejin/view/home_view.dart';
import 'package:taejin/view/slide_1_intro.dart';

class AppRoutes {
  static final routes = {
    '/': (context) => const HomeView(),
    '/slide1': (context) => const Slide1Intro(),
    // '/slide3': (context) => const Slide3TechStack(),
  };
}

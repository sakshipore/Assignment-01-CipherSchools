import 'package:cipher_schools_assignment/routes/routes_names.dart';
import 'package:cipher_schools_assignment/view/courses_screen.dart';
import 'package:cipher_schools_assignment/view/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RoutesNames.coursesScreen,
      page: () => CoursesScreen(),
    ),
  ];
}

import 'package:cipher_schools_assignment/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.toNamed(RoutesNames.coursesScreen);
          },
          child: Text("HOME SCREEN"),
        ),
      ),
    );
  }
}

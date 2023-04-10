import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowInfo extends StatelessWidget {
  final String title;
  final String subTitle;

  ShowInfo({required this.subTitle, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.sp,
            color: Color(0xffF3912E),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}

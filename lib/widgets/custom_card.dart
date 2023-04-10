// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String title, subtitle, buttonText;
  final Icon icon;
  const CustomCard({
    Key? key,
    required this.buttonText,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: 280.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.cyan,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 40.h,
            width: 15.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Row(
              children: [
                Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(width: 5.w),
                icon,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

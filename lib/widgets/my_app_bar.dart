import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size(360.w, 50.h);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 360.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1.r,
            // spreadRadius: 1.r, 
            color: Colors.black,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Row(
          children: [
            Image.asset(
              "assets/images/cipher_schools_logo.png",
              width: 20.w,
              height: 20.h,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              "CipherSchools",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            Spacer(),
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}

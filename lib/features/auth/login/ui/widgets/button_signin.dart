import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSignin extends StatelessWidget {
  const ButtonSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, Routes.homeViewNavigator);
      },
      child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(width: 2.0, color: primaryColor),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Text(
              'Sign In?',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )),
    );
  }
}

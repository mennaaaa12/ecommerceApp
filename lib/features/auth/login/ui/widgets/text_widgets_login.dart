import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidgetsLogin extends StatelessWidget {
  const TextWidgetsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(
                'Welcome Back',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
              ),
              Text(
                'Fill out the information below in order to access your account.',
                style: TextStyle(
                  color: secondaryText,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0.sp,
                ),
              ),
      ],
    );
  }
}
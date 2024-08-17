import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidgetSignup extends StatelessWidget {
  const TextWidgetSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Create Account',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
        Text(
          'Let\'s get started by filling out the form below.',
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

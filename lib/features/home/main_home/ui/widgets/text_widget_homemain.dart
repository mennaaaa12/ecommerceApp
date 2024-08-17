import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidgetHomemain extends StatelessWidget {
  const TextWidgetHomemain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Text(
                'Featured Products ',
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
               SizedBox(height: 2.h),
              Text(
                'View our latest styles from across our store below.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: secondaryText,
                  fontWeight: FontWeight.w400,
                ),
              ),
              
            ],
    );
  }
}
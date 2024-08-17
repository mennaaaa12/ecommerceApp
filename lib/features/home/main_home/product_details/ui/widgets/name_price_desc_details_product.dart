import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NamePriceDescDetailsProduct extends StatelessWidget {
  const NamePriceDescDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('[name]',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        SizedBox(height: 10.h),
        Text('[\$1,234.56]',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: primaryColor)),
        SizedBox(height: 10.h),
        Text('[description]',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: secondaryText)),
      ],
    );
  }
}

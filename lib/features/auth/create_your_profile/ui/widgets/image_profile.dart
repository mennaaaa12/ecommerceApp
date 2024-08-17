import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200.r),
        color: alternate,
      ),
      child: Icon(Icons.person_add_alt, size: 40.sp),
    );
  }
}

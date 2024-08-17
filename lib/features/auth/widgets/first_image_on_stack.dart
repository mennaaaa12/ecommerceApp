import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstImageOnStack extends StatelessWidget {
  const FirstImageOnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding:  EdgeInsets.all(32.0.h),
            child: Container(
              width: double.infinity,
              height: 230.0.h,
              decoration: BoxDecoration(
                color: primaryBackground,
                borderRadius: BorderRadius.circular(16.0.r),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding:
                     EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 90.0.h),
                child: Image.asset(
                'assets/images/shop_logo_dark.png',
                  width: 170.0.w,
                  height: 40.0.h,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          );
  }
}
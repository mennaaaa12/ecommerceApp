import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueAsGuest extends StatelessWidget {
  const ContinueAsGuest({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
      child: TextButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(
              width: 2.0,
              color: primaryColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 7.h),
            child: Text(
                  'Continue as Guest',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

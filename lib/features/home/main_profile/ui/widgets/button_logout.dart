import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonLogout extends StatelessWidget {
  const ButtonLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.authView );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(width: 2.0, color: alternate),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
            child: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: secondaryText),
            ),
          ),
        ));
  }
}

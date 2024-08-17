import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendResetLinkButton extends StatelessWidget {
  const SendResetLinkButton({super.key});

  @override
   Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(width: 2.0, color: primaryColor),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
              child: Text(
                'Send reset link',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            )),
      ),
    );
  }
}

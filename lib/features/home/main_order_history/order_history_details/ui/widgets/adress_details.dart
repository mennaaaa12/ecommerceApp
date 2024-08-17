import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdressDetails extends StatelessWidget {
  const AdressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '[address -> address]',
            style: TextStyle(fontSize: 13.sp, color: Colors.black),
          ),
          SizedBox(
            height: 5.h,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '[address -> address], [address -> address_2]',
                style: TextStyle(
                    fontSize: 13.sp,
                    color: secondaryText,
                    fontWeight: FontWeight.w300)),
            TextSpan(
                text:
                    '[address -> City], [address -> State] [address -> postalCode]',
                style: TextStyle(
                    fontSize: 13.sp,
                    color: secondaryText,
                    fontWeight: FontWeight.w300)),
          ]))
        ],
      ),
    );
  }
}

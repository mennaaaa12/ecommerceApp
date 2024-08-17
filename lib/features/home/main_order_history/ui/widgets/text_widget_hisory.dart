import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidgetHisory extends StatelessWidget {
  const TextWidgetHisory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('Order History',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            ),
            SizedBox(height: 10.h,),
            Text('Pending Orders',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
              color: secondaryText
            ),
            ),
      ],
    );
  }
}
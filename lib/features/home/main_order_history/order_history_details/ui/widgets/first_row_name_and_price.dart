import 'package:ecommerceapp/features/home/main_order_history/widgets/button_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstRowNameAndPrice extends StatelessWidget {
  const FirstRowNameAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '[name]',
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const Spacer(),
        const ButtonStatus(),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '[\$1,234.56]',
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ],
    );
  }
}

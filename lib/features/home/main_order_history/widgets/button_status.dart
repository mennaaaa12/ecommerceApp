import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonStatus extends StatelessWidget {
  const ButtonStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 40.h,
          width: 70.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: const Color.fromARGB(255, 247, 227, 218),
            border: Border.all(color: const Color(0xFFFF5963), width: 1.w),
          ),
          child: Center(
            child: Text(
              '[status]',
              style:
                  TextStyle(fontSize: 12.sp, color: const Color(0xFFFF5963)),
            ),
          ),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayementMethod extends StatelessWidget {
  const PayementMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.h),
      child: Row(
        children: [
          Icon(
            Icons.payment_outlined,
            color: Colors.grey,
            size: 20.sp,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Payement Methods',
            style: TextStyle(color: Colors.black, fontSize: 13.sp),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color: Colors.grey,
            size: 20.sp,
          ),
        ],
      ),
    );
  }
}

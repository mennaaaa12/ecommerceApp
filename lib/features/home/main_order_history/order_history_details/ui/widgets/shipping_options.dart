import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingOptions extends StatelessWidget {
  const ShippingOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: alternate, width: 1.0),
        boxShadow: const [
          BoxShadow(
            color: alternate,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '[shippingSelected ->]'
                  'shippingName]',
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '[shippingSelected -> description]',
                  style: TextStyle(fontSize: 12.sp, color: secondaryText),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '[\$1,234.56]',
              style: TextStyle(fontSize: 13.sp, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

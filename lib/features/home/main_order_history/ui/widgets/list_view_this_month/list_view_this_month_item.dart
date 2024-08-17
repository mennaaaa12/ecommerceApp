import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewThisMonthItem extends StatelessWidget {
  const ListViewThisMonthItem({super.key});

  @override
 Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0.r),
        side: const BorderSide(color: alternate, width: 1.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.h),
        child: Row(
          children: [
            Image.network(
              fit: BoxFit.cover,
              'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1f9150ef-b090-4e50-9135-d764a1a09c5c/invincible-3-mens-road-running-shoes-CLdFjq.png',
              width: 150,
              height: 100,
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Release',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Feb 15, 2022',
                  style: TextStyle(
                    color: secondaryText,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\$126.0',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

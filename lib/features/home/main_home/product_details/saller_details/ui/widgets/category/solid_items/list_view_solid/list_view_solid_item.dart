import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewSolidItem extends StatelessWidget {
  const ListViewSolidItem({super.key});

  @override  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(color: alternate, width: 1.0),
            boxShadow: const [
              BoxShadow(
                color: alternate,
                offset: Offset(0.0, 1.0),
              )
            ]),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13.r),
            child: Image.network(
              fit: BoxFit.cover,
              'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1f9150ef-b090-4e50-9135-d764a1a09c5c/invincible-3-mens-road-running-shoes-CLdFjq.png',
              width: 90,
              height: 90.h,
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Vistor ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              SizedBox(height: 5.h),
              Text('order id: 123456789',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: secondaryText,
                  ))
            ],
          ),
          Spacer(),
          Text('\$1,234.56',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.black)),
          SizedBox(width: 5.w),
        ]),
      ),
    );
  }
}

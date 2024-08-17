import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewReviewItem extends StatelessWidget {
  const ListViewReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(color: alternate, width: 1.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
               
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.r),
                  child: Image.network(
                    fit: BoxFit.cover,
                    'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1f9150ef-b090-4e50-9135-d764a1a09c5c/invincible-3-mens-road-running-shoes-CLdFjq.png',
                    width: 60,
                    height: 60.h,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Randy Alexander',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'User@domain.com',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: secondaryText),
                  )
                ]),
                const Spacer(),
                Column(
                  children: [
                    Text(
                      'overall',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: secondaryText),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          '5.0',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(width: 5.w),
                        Icon(Icons.star, color: primaryColor, size: 14.sp),
                      ],
                    ),
                  ],
                )
              ]),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque',
                  style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: secondaryText),
                ),
              )
            ],
          )),
    );
  }
}

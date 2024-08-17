import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndNameAndDetailsOfSaller extends StatelessWidget {
  const ImageAndNameAndDetailsOfSaller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.r),
            border: Border.all(color: primaryColor, width: 1.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13.r),
            child: Image.network(
              fit: BoxFit.cover,
              'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1f9150ef-b090-4e50-9135-d764a1a09c5c/invincible-3-mens-road-running-shoes-CLdFjq.png',
              width: 200,
              height: 200.h,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'Randy Alexander',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10.h),
        const Row(
          children: [
            Icon(
              Icons.star,
              color: primaryColor,
            ),
            Icon(
              Icons.star,
              color: primaryColor,
            ),
            Icon(
              Icons.star,
              color: primaryColor,
            ),
            Icon(
              Icons.star,
              color: primaryColor,
            ),
            Icon(
              Icons.star,
              color: primaryColor,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: '240 Sallers ',
            style: TextStyle(
              fontSize: 13.sp,
              color: primaryColor,
            ),
          ),
          TextSpan(
              text: 'Sam Alexander , Tx',
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black,
              ))
        ]))
      ],
    );
  }
}

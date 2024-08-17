import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingsText extends StatelessWidget {
  const RatingsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Ratings',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 5.h),
          Text('Read the ratings for this ',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: secondaryText)),
          SizedBox(height: 5.h),
          Text('product below',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: secondaryText)),
        ]),
        const Spacer(),
        Container(
          width: 100.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 200, 196, 235),
            borderRadius: BorderRadius.circular(20.0),
           border: Border.all(color: primaryColor),
           
          ),
          child: Center(
            child:TextButton(onPressed: (){}, child:  Text(
              'Leave Review',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),)
          ),
        )
      ],
    );
  }
}

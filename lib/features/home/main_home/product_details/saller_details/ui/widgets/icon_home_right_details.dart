import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconHomeRightDetails extends StatelessWidget {
  const IconHomeRightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(77, 8, 1, 65),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.homeViewNavigator);
              },
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
              )),
        ),
        SizedBox(width: 2.w),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            )),
        SizedBox(width: 2.w),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.productDetails);
          },
          child: Container(
            width: 110.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 200, 195, 226),
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                width: 2.0,
                color: primaryColor,
              ),
            ),
            child: Center(
              child: Text(
                'Product Details',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
         SizedBox(width: 2.w),
        IconButton(
            onPressed: () {
              
            },
            icon: const Icon(
              Icons.chevron_right,
              color: Colors.black,
            )),
        SizedBox(width:2.w),
        Container(
          width: 110.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 200, 195, 226),
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              width: 2.0,
              color: primaryColor,
            ),
          ),
          child: Center(
            child: Text(
              'Saller Details',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}

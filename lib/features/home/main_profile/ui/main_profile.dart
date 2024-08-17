import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/first_container_profile.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/second_container_bio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainProfile extends StatelessWidget {
  const MainProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Profile',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 20.h),
              const FirstContainerProfile(),
              SizedBox(height: 20.h),
              const SecondContainerBio(),
            ],
          ),
        ),
      )),
    );
  }
}

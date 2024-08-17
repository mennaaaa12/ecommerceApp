import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/button_logout.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/button_start_delling.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/edit_profile/edit_profile.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/image_and_name.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/payement_method/payement_method.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/widgets/saller_state/saller_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstContainerProfile extends StatelessWidget {
  const FirstContainerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const ImageAndName(),
            SizedBox(height: 10.h),
            Divider(
              color: alternate,
              thickness: 1.h,
            ),
            const EditProfile(),
            Divider(
              color: alternate,
              thickness: 1.h,
            ),
            const PayementMethod(),
            Divider(
              color: alternate,
              thickness: 1.h,
            ),
            const SallerState(),
            SizedBox(height: 10.h),
            Divider(
              color: alternate,
              thickness: 1.h,
            ),
            SizedBox(height: 10.h),
            const ButtonStartDelling(),
            SizedBox(height: 10.h),
            Divider(
              color: alternate,
              thickness: 1.h,
            ),
            SizedBox(height: 10.h),
            const ButtonLogout()
          ],
        ),
      ),
    );
  }
}

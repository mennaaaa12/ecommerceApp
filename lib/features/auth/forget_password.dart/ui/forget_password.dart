import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/auth/forget_password.dart/ui/widgets/send_reset_link_button.dart';
import 'package:ecommerceapp/features/auth/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Forget Password',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15).h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Type in your email address below and we will send you a reset link.',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: secondaryText,
                ),
              ),
              SizedBox(height: 20.sp),
               CustomTextFormField(
                hintText: 'Your email address...',
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 25.sp),
             const SendResetLinkButton()
            
            ],
          ),
        ),
      ),
    );
  }
}

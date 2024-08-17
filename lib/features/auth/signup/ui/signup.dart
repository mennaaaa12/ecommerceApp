import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/auth/widgets/continue_with_apple.dart';
import 'package:ecommerceapp/features/auth/widgets/continue_with_google.dart';
import 'package:ecommerceapp/features/auth/widgets/email_and_password.dart';
import 'package:ecommerceapp/features/auth/signup/ui/widgets/continue_as_guest.dart';
import 'package:ecommerceapp/features/auth/signup/ui/widgets/get_started.dart';
import 'package:ecommerceapp/features/auth/signup/ui/widgets/text_widget_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const TextWidgetSignup(),
                SizedBox(height: 30.sp),
              const EmailAndPassword(),
              SizedBox(height: 20.sp),
              const GetStarted(),
              SizedBox(height: 20.sp),
              Center(
                child: Text(
                  'Or sign up with ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: secondaryText,
                  ),
                ),
              ),
              SizedBox(height: 25.sp),
              const ContinueWithGoogle(),
              SizedBox(height: 10.sp),
              const ContinueWithApple(),
               SizedBox(height: 10.sp),
              const ContinueAsGuest(),
            ],
          ),
        ),
      ),
      ));
  }
}

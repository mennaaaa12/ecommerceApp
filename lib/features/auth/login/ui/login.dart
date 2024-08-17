import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/auth/login/ui/widgets/button_signin.dart';
import 'package:ecommerceapp/features/auth/widgets/continue_with_apple.dart';
import 'package:ecommerceapp/features/auth/widgets/continue_with_google.dart';
import 'package:ecommerceapp/features/auth/widgets/email_and_password.dart';
import 'package:ecommerceapp/features/auth/login/ui/widgets/forget_password_button.dart';
import 'package:ecommerceapp/features/auth/login/ui/widgets/text_widgets_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const TextWidgetsLogin(),
              SizedBox(height: 30.sp),
              const EmailAndPassword(),
              SizedBox(height: 20.sp),
              const Row(
                children: [ForgetPasswordButton(), ButtonSignin()],
              ),
              SizedBox(height: 20.sp),
              Center(
                child: Text(
                  'Or sign in with ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: secondaryText,
                  ),
                ),
              ),
              SizedBox(height: 25.sp),
              const ContinueWithGoogle(),
              SizedBox(height: 10.sp),
              const ContinueWithApple(),
            
            ],
          ),
        ),
      ),
    );
  }
}

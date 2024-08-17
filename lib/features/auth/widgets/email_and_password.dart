import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/auth/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(
            hintText: 'Email',
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            hintText: 'Password',
            isObScure: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: secondaryText,
                size: 24.0.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

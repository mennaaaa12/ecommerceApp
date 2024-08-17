import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.isObScure,
    this.textEditingController,
    this.validator, this.textStyle, this.padding,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final bool? isObScure;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
 final TextStyle? textStyle;
 final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: padding??
               EdgeInsetsDirectional.fromSTEB(26.0, 26.0, 26.0, 26.h),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: alternate,
              width: 2.0.w,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
              width: 2.0.w,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: error,
              
              width: 2.w,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: error,
              width: 2.0.w,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          labelText:hintText ,
          labelStyle:textStyle ?? const TextStyle(
             color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
          ),
         
          suffixIcon: suffixIcon,
          fillColor: secondaryBackground,
          filled: true,
        ),
        obscureText: isObScure ?? false,
        validator: validator, 
      ),
    );
  }
}

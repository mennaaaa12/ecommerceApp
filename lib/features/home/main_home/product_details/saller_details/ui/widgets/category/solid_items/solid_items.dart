import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerceapp/core/constant/colors.dart';

class SolidItems extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;

  const SolidItems({
    super.key,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: isSelected ? 94.w : 90.w,
          height: isSelected ? 41.h : 40.h,
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 233, 231, 247)
                : primaryBackground,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              width: 2.0,
              color: isSelected ? primaryColor : alternate,
            ),
          ),
          child: Center(
            child: Text(
              'Solid item',
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: isSelected ? primaryColor : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

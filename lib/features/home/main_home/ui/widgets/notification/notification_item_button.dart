import 'package:flutter/material.dart';
import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItemButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  const NotificationItemButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<NotificationItemButton> createState() => _NotificationItemButtonState();
}

class _NotificationItemButtonState extends State<NotificationItemButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: widget.isSelected ? 40.w : 39.w,
          height: widget.isSelected ? 40.h : 39.h,
          decoration: BoxDecoration(
            color: widget.isSelected
                ? const Color.fromARGB(255, 180, 177, 201)
                : Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              width: 2.0,
              color: widget.isSelected ? primaryColor : alternate,
            ),
          ),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: widget.isSelected ? Colors.black : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

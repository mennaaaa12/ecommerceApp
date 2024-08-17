import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewHorizontalCategoriesItem extends StatefulWidget {
  const ListViewHorizontalCategoriesItem({super.key});

  @override
  State<ListViewHorizontalCategoriesItem> createState() =>
      _ListViewHorizontalCategoriesItemState();
}

class _ListViewHorizontalCategoriesItemState
    extends State<ListViewHorizontalCategoriesItem> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Padding(
        padding:  EdgeInsets.only(right: 12.h),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: _isSelected ? 105.w : 100.w,
          height: _isSelected ? 80.h : 40.h,
          decoration: BoxDecoration(
            color:  _isSelected ? const Color.fromARGB(255, 180, 177, 201) : primaryBackground,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              width: 2.0,
              color: _isSelected ? primaryColor : alternate,
            ),
          ),
          child: Center(
            child: Text(
              'Electronics',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color:_isSelected?Colors.black : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

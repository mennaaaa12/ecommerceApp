import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/image_product.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/listview_ratings/list_view_raitings.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/name_price_desc_details_product.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/ratings_text.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/saller_detaols_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProductAndSizesDetails extends StatefulWidget {
  const ImageProductAndSizesDetails({super.key});

  @override
  State<ImageProductAndSizesDetails> createState() => _ImageProductAndSizesDetailsState();
 
}

class _ImageProductAndSizesDetailsState
    extends State<ImageProductAndSizesDetails> {
  String _selectedSize = '';

  void _selectSize(String size) {
    setState(() {
      _selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageProduct(),
        SizedBox(height: 10.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NamePriceDescDetailsProduct(),
            Divider(
              color: alternate,
              thickness: 1.h,
            ),
            SizedBox(height: 10.h),
            Text('Shoe Size',
                style: TextStyle(fontSize: 14.sp, color: secondaryText)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: [
                _buildSizeButton('8'),
                _buildSizeButton('9'),
                _buildSizeButton('10'),
                _buildSizeButton('11'),
                _buildSizeButton('12'),
                _buildSizeButton('13'),
              ],
            ),
            SizedBox(height: 10.h),
            Text('Color',
                style: TextStyle(fontSize: 14.sp, color: secondaryText)),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: [
                _buildCokorButton('grey'),
                _buildCokorButton('white'),
                _buildCokorButton('black'),
              ],
            ),
            SizedBox(height: 10.h),
            const SallerDetailsContaimer(),
            SizedBox(height: 10.h),
            const RatingsText(),
            SizedBox(height: 10.h),
            const ListViewRaitings(),
           
          ],
        ),
      ],
    );
  }

  Widget _buildSizeButton(String size) {
    final isSelected = _selectedSize == size;

    return GestureDetector(
      onTap: () => _selectSize(size),
      child: AnimatedContainer(
        width: 60.w,
        height: 35,
        duration: const Duration(milliseconds: 300),
        // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : primaryBackground,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Text(
            'size $size',
            style: TextStyle(
              color: isSelected ? Colors.white : secondaryText,
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCokorButton(String color) {
    final isSelected = _selectedSize == color;

    return GestureDetector(
      onTap: () => _selectSize(color),
      child: AnimatedContainer(
        width: 60.w,
        height: 35,
        duration: const Duration(milliseconds: 300),
        // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : primaryBackground,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Text(
            color,
            style: TextStyle(
              color: isSelected ? Colors.white : secondaryText,
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

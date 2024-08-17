import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13.r),
      child: Image.network(
        fit: BoxFit.cover,
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1f9150ef-b090-4e50-9135-d764a1a09c5c/invincible-3-mens-road-running-shoes-CLdFjq.png',
        width: double.infinity,
        height: 400.h,
      ),
    );
  }
}

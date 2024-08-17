import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_order_history/widgets/button_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastRowWithStatus extends StatelessWidget {
  const LastRowWithStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Number of items : [1]',
            style: TextStyle(fontSize: 12.sp, color: secondaryText)),
        const Spacer(),
       const ButtonStatus()
      ],
    );
  }
}

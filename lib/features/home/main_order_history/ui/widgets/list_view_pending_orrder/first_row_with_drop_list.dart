import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstRowWithDropList extends StatelessWidget {
  const FirstRowWithDropList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'name',
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const Spacer(),
        Text(
          '\$1234.56',
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          width: 10.w,
        ),
        PopupMenuButton<String>(
          icon: const Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
          color: Colors.white, 
          onSelected: (String value) {
            switch (value) {
              case 'view_details':
                 Navigator.pushNamed(context, Routes.orderHistoryDetails);
                break;
              case 'reorder':
                // Handle re-order action
                break;
              case 'contact_seller':
                // Handle contact seller action
                break;
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<String>(
                value: 'view_details',
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, color: Colors.black),
                    SizedBox(width: 10.w),
                    Text('View Details', style: TextStyle(fontSize: 12.sp)),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'reorder',
                child: Row(
                  children: [
                    const Icon(Icons.repeat, color: Colors.black),
                    SizedBox(width: 10.w),
                    Text('Re-Order', style: TextStyle(fontSize: 12.sp)),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'contact_seller',
                child: Row(
                  children: [
                    const Icon(Icons.contact_mail, color: Colors.black),
                    SizedBox(width: 10.w),
                    Text('Contact Seller', style: TextStyle(fontSize: 12.sp)),
                  ],
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}

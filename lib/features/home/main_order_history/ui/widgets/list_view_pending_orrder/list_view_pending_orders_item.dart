import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/list_view_pending_orrder/first_row_with_drop_list.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/list_view_pending_orrder/last_row_with_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewPendingOrdersItem extends StatelessWidget {
  const ListViewPendingOrdersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 10.h),
      child: Container(
                    width: double.infinity,
                    height: 165.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                        border: Border.all(color: alternate, width: 1.w),
                        boxShadow: const [
                          BoxShadow(
                            color: alternate,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 6.0,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(12.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FirstRowWithDropList(),
                          SizedBox(height: 5.h),
                          Text('Ordered on : [1]',
                              style: TextStyle(
                                  fontSize: 12.sp, color: secondaryText)),
                          SizedBox(height: 5.h),
                          Divider(  color: alternate , thickness: 1.h,),
                          SizedBox(height: 5.h),
                         const LastRowWithStatus()
                        ],
                      ),
                    ),
                  ),
    );
  }
}
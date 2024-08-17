import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/list_view_pending_orrder/list_view_pending_orders.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/list_view_this_month/list_view_this_month.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/widgets/text_widget_hisory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 26.h,
                ),
                const TextWidgetHisory(),
                SizedBox(
                  height: 15.h,
                ),
                const ListViewPendingOrders(),
                SizedBox(
                  height: 20.h,
                ),
                Text('this month', style: TextStyle(fontSize: 12.sp, color: secondaryText)),
                SizedBox(
                  height: 15.h,
                ),
                const ListViewThisMonth()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

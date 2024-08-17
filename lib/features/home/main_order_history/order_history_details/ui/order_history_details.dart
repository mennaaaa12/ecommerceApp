import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_order_history/order_history_details/ui/widgets/adress_details.dart';
import 'package:ecommerceapp/features/home/main_order_history/order_history_details/ui/widgets/first_row_name_and_price.dart';
import 'package:ecommerceapp/features/home/main_order_history/order_history_details/ui/widgets/list_view_quantity/list_view_quantity.dart';
import 'package:ecommerceapp/features/home/main_order_history/order_history_details/ui/widgets/shipping_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHistoryDetails extends StatelessWidget {
  const OrderHistoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBackground,
        appBar: AppBar(
          backgroundColor: primaryBackground,
          title: const Text('Order Details', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: alternate, width: 1.0),
                    boxShadow: const [
                      BoxShadow(
                        color: alternate,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FirstRowNameAndPrice(),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Ordered on:[1] at [2]',
                          style:
                              TextStyle(fontSize: 12.sp, color: secondaryText),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Your shopping address',
                          style:
                              TextStyle(fontSize: 12.sp, color: secondaryText),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const AdressDetails(),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Selected Shipping',
                          style:
                              TextStyle(fontSize: 14.sp, color: secondaryText),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const ShippingOptions(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Divider(
                          color: alternate,
                          thickness: 1.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const ListViewQuantity()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}

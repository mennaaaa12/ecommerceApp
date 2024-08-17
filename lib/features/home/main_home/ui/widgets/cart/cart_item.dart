import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/cart/list_view_cart/list_view_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.onPressed});
 final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Order Summary',
                style: Theme.of(context).textTheme.headlineMedium),
            const Spacer(),
            IconButton(
                onPressed:onPressed,
                icon: const Icon(Icons.close)),
          ],
        ),
        const SizedBox(height: 5),
        const Text('Below is a summary of your items',
            style: TextStyle(color: secondaryText, fontSize: 12)),
        const SizedBox(height: 20),
        const Expanded(
          child: ListViewCart(),
        ),
        const SizedBox(height: 10),
        Divider(
          color: alternate,
          thickness: 1.h,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Sub-Total',
              style: TextStyle(
                color: secondaryText,
                fontSize: 14.sp,
              ),
            ),
            const Spacer(),
            Text(
              '\$ 1,234.56',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: primaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(width: 2.0, color: primaryBackground),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                  child: Text(
                    'clear cart',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(width: 2.0, color: primaryColor),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                  child: Text(
                    'Go to cart',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

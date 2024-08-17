import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerceapp/core/constant/colors.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onNotificationClick;
  final VoidCallback onCartClick;
  final bool isNotificationClicked;
  final bool isCartClicked;

  const CustomAppBar({
    super.key,
    required this.onNotificationClick,
    required this.onCartClick,
    required this.isNotificationClicked,
    required this.isCartClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/shop_logo_dark.png',
          width: 200,
          height: 150,
        ),
        const Spacer(),
        GestureDetector(
          onTap: onNotificationClick,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(isNotificationClicked ? 12.0 : 10.0),
            decoration: BoxDecoration(
              color: primaryBackground,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: isNotificationClicked ? primaryColor : primaryBackground,
                width: 2.0,
              ),
              boxShadow: isNotificationClicked
                  ? [
                      const BoxShadow(
                        color: primaryColor,
                        blurRadius: 10.0,
                        offset: Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
            child: const Icon(Icons.notifications),
          ),
        ),
        SizedBox(width: 10.w),
        GestureDetector(
          onTap: onCartClick,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(isCartClicked ? 12.0 : 10.0),
            decoration: BoxDecoration(
              color: primaryBackground,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: isCartClicked ? primaryColor : primaryBackground,
                width: 2.0,
              ),
              boxShadow: isCartClicked
                  ? [
                      const BoxShadow(
                        color: primaryColor,
                        blurRadius: 10.0,
                        offset: Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
            child: const Icon(FontAwesomeIcons.cartShopping),
          ),
        ),
      ],
    );
  }
}

import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/cart/cart_item.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/notification/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/list_view_horizontal_gategories/list_view_horizontal_gategories.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/list_view_horizontal_product/list_view_horizontal_products.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/list_view_vertical_product/list_view_vertical_product.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/text_widget_homemain.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isNotificationClicked = false;
  bool _isCartClicked = false;

  void _handleNotificationClick() {
    setState(() {
      _isNotificationClicked = !_isNotificationClicked;
      _isCartClicked = false; 
    });
  }

  void _handleCartClick() {
    setState(() {
      _isCartClicked = !_isCartClicked;
      _isNotificationClicked = false; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      onNotificationClick: _handleNotificationClick,
                      onCartClick: _handleCartClick,
                      isNotificationClicked: _isNotificationClicked,
                      isCartClicked: _isCartClicked,
                    ),
                    SizedBox(height: 5.h),
                    const TextWidgetHomemain(),
                    SizedBox(height: 15.h),
                    const ListViewHorizontalProducts(),
                    SizedBox(height: 25.h),
                    const ListViewHorizontalGategories(),
                    SizedBox(height: 25.h),
                    const ListViewVerticalProduct(),
                  ],
                ),
              ),
            ),
            if (_isNotificationClicked)
              _buildNotificationOverlay(context),
            if (_isCartClicked)
              _buildCartOverlay(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationOverlay(BuildContext context) {
    return Positioned(
      top: 90,
      right: 90,
      left: 70,
      child: AnimatedOpacity(
        opacity: _isNotificationClicked ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          height: 500.h,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow:const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset:  Offset(0, 4),
              ),
            ],
          ),
          child:  NotificationItem(
            onPressed: () {
             Navigator.pushReplacementNamed(context, Routes.homeViewNavigator);
            },
          )
        ),
      ),
    );
  }

  Widget _buildCartOverlay(BuildContext context) {
    return Positioned(
      top: 90,
      right: 50,
      left: 70,
      child: AnimatedOpacity(
        opacity: _isCartClicked ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          height: 500.h,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset:  Offset(0, 4),
              ),
            ],
          ),
          child:  CartItem(
            onPressed:  () {
                  Navigator.pushReplacementNamed(context, Routes.homeViewNavigator);
                },
          )
        ),
      ),
    );
  }
}

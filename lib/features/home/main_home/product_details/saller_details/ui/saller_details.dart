import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/purchased_item/list_view_purchased/list_view_purchased.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/purchased_item/purchased_item.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/reviews/list_view_review.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/reviews/reviews.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/solid_items/list_view_solid/list_view_solid.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/solid_items/solid_items.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/icon_home_right_details.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/image_and_name_and_details_of_saller.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/cart/cart_item.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/notification/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/custom_app_bar.dart';

enum SelectedButton { purchased, solid, reviews }

class SallerDetails extends StatefulWidget {
  const SallerDetails({super.key});

  @override
  State<SallerDetails> createState() => _SallerDetailsState();
}

class _SallerDetailsState extends State<SallerDetails> {
  bool _isNotificationClicked = false;
  bool _isCartClicked = false;
  SelectedButton? _selectedButton;

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

  void _onButtonPressed(SelectedButton button) {
    setState(() {
      _selectedButton = _selectedButton == button ? null : button;
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
                    const IconHomeRightDetails(),
                    SizedBox(height: 15.h),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.r),
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
                        padding: EdgeInsets.all(15.0.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ImageAndNameAndDetailsOfSaller(),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                PurchasedItem(
                                  isSelected: _selectedButton == SelectedButton.purchased,
                                  onPressed: () => _onButtonPressed(SelectedButton.purchased),
                                ),
                                SizedBox(width: 5.w),
                                SolidItems(
                                  isSelected: _selectedButton == SelectedButton.solid,
                                  onPressed: () => _onButtonPressed(SelectedButton.solid),
                                ),
                                SizedBox(width: 5.w),
                                Reviews(
                                  isSelected: _selectedButton == SelectedButton.reviews,
                                  onPressed: () => _onButtonPressed(SelectedButton.reviews),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            if (_selectedButton == SelectedButton.purchased) const ListViewPurchased(),
                            if (_selectedButton == SelectedButton.solid) const ListViewSolid(),
                            if (_selectedButton == SelectedButton.reviews) const ListViewReview(),
                           
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_isNotificationClicked) _buildNotificationOverlay(context),
            if (_isCartClicked) _buildCartOverlay(context),
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
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: NotificationItem(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.sallerDetails);
            },
          ),
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
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: CartItem(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.sallerDetails);
              },
            )),
      ),
    );
  }
}

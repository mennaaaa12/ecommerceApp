import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/icons_buton_home_right_button.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/image_product_and_sizes_details.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/cart/cart_item.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/notification/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/custom_app_bar.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _isNotificationClicked = false;
  bool _isCartClicked = false;
  int _itemCount = 0; 

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

  void _incrementCount() {
    setState(() {
      _itemCount++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_itemCount > 0) _itemCount--;
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
                    const IconsButonHomeRightButton(),
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
                        child: const ImageProductAndSizesDetails(),
                      ),
                    ),
                    SizedBox(height: 100.h),
                  ],
                ),
              ),
            ),
            if (_isNotificationClicked) _buildNotificationOverlay(context),
            if (_isCartClicked) _buildCartOverlay(context),
            _buildBottomContainer(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomContainer(BuildContext context) {
    return Positioned(
      bottom: 30.h,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: primaryBackground.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: const [
            BoxShadow(
              color: primaryBackground,
              blurRadius: 12.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Row(
                
                children: [
                  SizedBox(width: 10.w),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: _decrementCount,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    '$_itemCount',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: _incrementCount,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
               
              },

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.r),
                ),
                backgroundColor: primaryColor,
              ),
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
            ),
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
          child:  NotificationItem(
            onPressed: () {
             Navigator.pushReplacementNamed(context, Routes.productDetails);
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
          child:  CartItem(
            onPressed:  () {
                  Navigator.pushReplacementNamed(context, Routes.productDetails);
                },
          )
        ),
      ),
    );
  }
}

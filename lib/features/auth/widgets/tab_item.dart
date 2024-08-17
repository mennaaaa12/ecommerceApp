import 'package:ecommerceapp/features/auth/login/ui/login.dart';
import 'package:ecommerceapp/features/auth/signup/ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabItem extends StatelessWidget {
  final TabController tabBarController;

  const TabItem({super.key, required this.tabBarController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 110.h),
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabBarController,
                indicator: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: tabBarController.index == 0
                      ? BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        )
                      : BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                ),
                dividerColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.shade600,
                labelStyle: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 14.0,
                ),
                tabs: const [
                  Tab(
                    height: 30,
                    text: 'Sign In',
                  ),
                  Tab(text: 'Sign Up'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabBarController,
              children: const [
                LoginApp(),
               Signup(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

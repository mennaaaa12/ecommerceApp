import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/onboarding/data/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (int index){
              setState(() {
                currentIndex = index;
              });
            },
              itemCount: contents.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(40.h),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image!,
                        height: 300.h,
                      ),
                      Text(
                        contents[i].title!,
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        contents[i].description!,
                        style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }),
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length, (index) => buildDot(index, context)),
            ),
            Container(
          height: 60.h,
          margin: EdgeInsets.all(40.h),
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushNamed(context, Routes.authView);
              } else {
                _controller.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.bounceIn);
              }
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            child:  Text(
              currentIndex == contents.length - 1 ? "Continue" : "Next",
            ),
          ),
        )
          ],
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.h,
      width: currentIndex == index ? 20.w : 10.w,
      margin: EdgeInsets.only(right: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: primaryColor),
    );
  }
}

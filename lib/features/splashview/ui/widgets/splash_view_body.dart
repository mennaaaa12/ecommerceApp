import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/splashview/ui/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
   @override
     void initState() {
    super.initState();
    initSlideAnimation();
    navigateToHome();
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, Routes.onboarding);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

       children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 20),
          child: Image.asset('assets/images/shop_logo_dark.png'
           
          ),
        ),
        SizedBox(height: 5.h,),
       SlidingText(slidingAnimation: slidingAnimation),
       ],
    );
  }
}
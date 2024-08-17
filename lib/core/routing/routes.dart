import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/auth/auth.dart';
import 'package:ecommerceapp/features/auth/create_your_profile/ui/create_your_profile.dart';
import 'package:ecommerceapp/features/auth/forget_password.dart/ui/forget_password.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/saller_details.dart';
import 'package:ecommerceapp/features/home/main_home/product_details/ui/product_details.dart';
import 'package:ecommerceapp/features/home/main_home/ui/home_view.dart';
import 'package:ecommerceapp/features/home/main_order_history/order_history_details/ui/order_history_details.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/order_history.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/main_profile.dart';
import 'package:ecommerceapp/features/home/ui/home_view_navigator_button.dart';
import 'package:ecommerceapp/features/onboarding/ui/onboarding.dart';
import 'package:ecommerceapp/features/splashview/ui/splash_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const Onboarding(),
        );
      case Routes.authView:
        return MaterialPageRoute(
          builder: (_) => const Auth(),
        );
        case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgetPassword(),
        );
        case Routes.homeViewNavigator:
        return MaterialPageRoute(
          builder: (_) => const HomeViewNavigatorButton(),
        );
        
      case Routes.kHomeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
        case Routes.orderHistory:
        return MaterialPageRoute(
          builder: (_) => const OrderHistory(),
        );
        case Routes.orderHistoryDetails:
        return MaterialPageRoute(
          builder: (_) => const OrderHistoryDetails(),
        );
        case Routes.mainProfile:
        return MaterialPageRoute(
          builder: (_) => const MainProfile(),
        );
         case Routes.createYourProfile:
        return MaterialPageRoute(
          builder: (_) => const CreateYourProfile(),
        );
         case Routes.productDetails:
        return MaterialPageRoute(
          builder: (_) => const ProductDetails(),
        );
         case Routes.sallerDetails:
        return MaterialPageRoute(
          builder: (_) => const SallerDetails(),
        );
      default:
        return null;
    }
  }
}

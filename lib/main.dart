import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Ecommerce());
}

class Ecommerce extends StatelessWidget {
  Ecommerce({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        onGenerateRoute: _appRouter.generateRoute,
        initialRoute: Routes.initial,
      ),
    );
  }
}

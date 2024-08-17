import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/auth/widgets/first_image_on_stack.dart';
import 'package:ecommerceapp/features/auth/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({super.key});

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabBarController;

  @override
  void initState() {
    super.initState();
    tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    );
    tabBarController.addListener(() {
      setState(() {}); 
    });
  }

  @override
  void dispose() {
    tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            const FirstImageOnStack(),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 170.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width >= 768.0
                              ? 630.0
                              : 730.0,
                          constraints: const BoxConstraints(maxWidth: 570.0),
                          decoration: BoxDecoration(
                            color: secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child:  TabItem(tabBarController: tabBarController,)
                     
                     
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

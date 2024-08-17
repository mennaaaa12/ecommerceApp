import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:ecommerceapp/features/home/main_home/ui/widgets/list_view_vertical_product/list_view_vertical_product_item.dart';
import 'package:flutter/material.dart';

class ListViewVerticalProduct extends StatelessWidget {
  const ListViewVerticalProduct({super.key});

  @override

  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.productDetails);
          },
          child: const ListViewVerticalProductItem());
      },
    );
  }
}
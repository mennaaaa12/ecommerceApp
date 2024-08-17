import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/solid_items/list_view_solid/list_view_solid_item.dart';
import 'package:flutter/material.dart';

class ListViewSolid extends StatelessWidget {
  const ListViewSolid({super.key});

  @override  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return const ListViewSolidItem();
    });
  }
}
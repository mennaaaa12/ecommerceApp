import 'package:ecommerceapp/features/home/main_home/ui/widgets/list_view_horizontal_product/list_view_horizontal_item.dart';
import 'package:flutter/material.dart';

class ListViewHorizontalProducts extends StatelessWidget {
  const ListViewHorizontalProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
      
          return const ListViewHorizontalItem();
        },
      ),
    );
  }
}

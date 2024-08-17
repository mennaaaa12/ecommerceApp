import 'package:ecommerceapp/features/home/main_home/ui/widgets/list_view_horizontal_gategories/list_view_horizontal_gategories_item.dart';
import 'package:flutter/material.dart';

class ListViewHorizontalGategories extends StatelessWidget {
  const ListViewHorizontalGategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ListViewHorizontalCategoriesItem();
        },
      ),
    );
  }
}
import 'package:ecommerceapp/features/home/main_home/product_details/ui/widgets/listview_ratings/list_view_raitings_item.dart';
import 'package:flutter/material.dart';

class ListViewRaitings extends StatelessWidget {
  const ListViewRaitings({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
      return const ListViewRaitingsItem();
    });
  }
}
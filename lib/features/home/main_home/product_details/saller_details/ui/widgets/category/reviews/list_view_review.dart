import 'package:ecommerceapp/features/home/main_home/product_details/saller_details/ui/widgets/category/reviews/list_view_review_item.dart';
import 'package:flutter/material.dart';

class ListViewReview extends StatelessWidget {
  const ListViewReview({super.key});

  @override
   Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return const ListViewReviewItem();
    });
  }
}
import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewCartItem extends StatelessWidget {
  const ListViewCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0.h),
                border: Border.all(color: primaryColor, width: 1.0.w),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  width: 50.w,
                  height: 50.h,
                  fit: BoxFit.cover,
                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('name',style: TextStyle(fontSize: 14),),
                Text('quantity'),
              ],
            ),
            const Spacer(),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Text('[\$1,234.56]',style: TextStyle(fontSize: 14),),
                  const Text('[\$1,234.56]',style: TextStyle(fontSize: 12,color: primaryColor)),
                  IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trashCan , color: Colors.red,size: 20,)),
              ],
            ),
          ],
        );
  }
}
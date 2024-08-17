import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class SallerDetailsContaimer extends StatelessWidget {
  const SallerDetailsContaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.sallerDetails);
      },
      child: Container(
       
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryBackground,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Saller Name'),
                Text('240 salles ...'),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                 Navigator.pushNamed(context, Routes.sallerDetails);
              },
              icon: const Icon(Icons.chevron_right),
            ),
          ]
        ),
      ),
    );
  }
}
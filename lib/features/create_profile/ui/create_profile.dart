import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Create your profile',
          style: TextStyle(
            fontSize: 22.sp,
             fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
            ],
        ),
      ),
    );
  }
}
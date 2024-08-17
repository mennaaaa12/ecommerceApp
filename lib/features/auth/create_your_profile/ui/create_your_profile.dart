import 'package:ecommerceapp/features/auth/create_your_profile/ui/widgets/button_save_changes.dart';
import 'package:ecommerceapp/features/auth/create_your_profile/ui/widgets/image_profile.dart';
import 'package:ecommerceapp/features/auth/create_your_profile/ui/widgets/location_and_droplist.dart';
import 'package:ecommerceapp/features/auth/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateYourProfile extends StatelessWidget {
  const CreateYourProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Create your profile'),
      ),
      body:  Padding(
        padding:  EdgeInsets.all(25.0.h),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.h),
        const ImageProfile(),
          SizedBox(height: 20.h),
          const CustomTextFormField(
            hintText: 'Your name',
          ),
          SizedBox(height: 20.h),
        const LocationAndDroplist(),
          SizedBox(height: 20.h),
          CustomTextFormField(
            hintText: 'Bio',
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 40.0, 40.h),
          ),
          SizedBox(height: 20.h),
         const ButtonSaveChanges()
        ],
            ),
      ),
    );
  }
}

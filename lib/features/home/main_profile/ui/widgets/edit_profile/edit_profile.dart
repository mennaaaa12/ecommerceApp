import 'package:ecommerceapp/features/home/main_profile/ui/widgets/edit_profile/dialog_edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.h),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const DialogEditProfile();
            },
          );
        },
        child: Row(
          children: [
            Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 24.sp,
            ),
            SizedBox(width: 10.w),
            Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 24.sp,
            ),
          ],
        ),
      ),
    );
  }
}

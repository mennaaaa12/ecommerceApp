import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/auth/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DialogEditProfile extends StatelessWidget {
  const DialogEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0.r),
                ),
                child: Container(
                  height: 700.h,
                  padding: EdgeInsets.all(24.0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.r),
                          color: alternate,
                        ),
                        child: Icon(Icons.person_add_alt, size: 40.sp),
                      ),
                      SizedBox(height: 20.h),
                      const CustomTextFormField(
                        hintText: 'Your name',
                      ),
                      SizedBox(height: 20.h),
                      CustomTextFormField(
                        hintText: 'Location',
                        suffixIcon: PopupMenuButton<String>(
                          icon: const Icon(FontAwesomeIcons
                              .chevronDown), 
                          onSelected: (String value) {
                            
                          },
                          itemBuilder: (BuildContext context) {
                            return <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: 'Option 1',
                                child: Text('cairo'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Option 2',
                                child: Text('alexandria'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Option 3',
                                child: Text('giza'),
                              ),
                            ];
                          },
                          color: Colors
                              .white, // Set the background color of the dropdown
                        ),
                      ),
                     SizedBox(height: 20.h),

                     CustomTextFormField(
                       hintText: 'Bio',
                        padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 40.0, 40.h),
                     ),
                       SizedBox(height: 20.h),
                     TextButton(onPressed: (){}, child: Container(
                       decoration: BoxDecoration(
                         color: primaryColor,
                         borderRadius: BorderRadius.circular(24.0),
                         border: Border.all(width: 2.0, color: primaryColor),
                       ),
                       child: Padding(
                         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
                         child: Text(
                           'Save Changes',
                           style: TextStyle(
                               fontSize: 14.sp,
                               fontWeight: FontWeight.w400,
                               color: Colors.white),
                         ),
                       ),
                     ))
                    ],
                  ),
                ),
              );
          
    
  }
}
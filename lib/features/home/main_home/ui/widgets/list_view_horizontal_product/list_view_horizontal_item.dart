import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewHorizontalItem extends StatelessWidget {
  const ListViewHorizontalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding:
                EdgeInsets.only(right: 12.w),
                    
                child: Container(
                  width: 330.0.w,
                  height: 145.0.h,
                  decoration: BoxDecoration(
                    color: primaryBackground,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1f9150ef-b090-4e50-9135-d764a1a09c5c/invincible-3-mens-road-running-shoes-CLdFjq.png',
                      ),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                  child: Container(
                    width: 100.0.w,
                    height: 100.0.h,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0x0014181B), Color(0x9914181B)],
                        stops: [0.4, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(12.0.r),
                    ),
                    child:  Padding(
                      padding: EdgeInsets.all(12.0.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sports',
                              style: TextStyle(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0.sp,
                              )),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0.h, 0.0, 0.0),
                            child: Text('3.1k Products',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0.sp,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}
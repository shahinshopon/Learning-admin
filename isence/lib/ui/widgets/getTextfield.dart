import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';


 Widget getTextField({required String hint,required IconData prefixicon, suffixicon}) {
    return Container(
      height: 55.h,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(12.w),
              child: Container(
                width: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0x64e7edf4),
                ),
                child: Center(
                    child: Icon(
                  prefixicon,
                  size: 16.w,
                )),
              ),
            ),
            suffixIcon: Icon(suffixicon,size: 17.w,color:AppColors.insane_primary ,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                  color:AppColors.insane_primary.withOpacity(0.2), width: 1),
            ),
           
            contentPadding:
                EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
            filled: true,
            fillColor: AppColors.insane_white,
            hintText: hint,
            hintStyle: TextStyle(
              fontFamily: "SF Pro",
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.insane_primary ,
            )),
      ),
    );
  }
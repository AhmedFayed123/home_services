import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:home_services/core/constant/app_strings.dart';
import 'package:home_services/core/constant/app_styles.dart';

class TermsAndPrivacyContainer extends StatelessWidget {
  const TermsAndPrivacyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h),
      child: Container(
        width: 350.w,
        height: 62.h,
        padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 20.w,),
        decoration: BoxDecoration(
          color: AppColors.hawkesBlue,
          borderRadius: BorderRadius.all(Radius.circular(8.r,),),
        ),
        child: Text(AppStrings.termsAndPrivacy,style: AppStyles.textBody12,),
      ),
    );
  }
}

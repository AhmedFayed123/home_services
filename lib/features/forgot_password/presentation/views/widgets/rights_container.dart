import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';

class RightsContainer extends StatelessWidget {
  const RightsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 65.h,
      padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 20.w,),
      decoration: const BoxDecoration(
        color: AppColors.quartz,
      ),
      child: Text(AppStrings.termsAndPrivacy,style: AppStyles.textBody12,),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';

class OrRaw extends StatelessWidget {
  const OrRaw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 26.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 156.w,
            height: 1.h,
            color: AppColors.borderColor,
          ),
          Text(
            AppStrings.or,
            style: AppStyles.textBody12.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.luckyGrey,
            ),
          ),
          Container(
            width: 156.w,
            height: 1.h,
            color: AppColors.borderColor,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class CheckYourWhatsappViewBody extends StatelessWidget {
  const CheckYourWhatsappViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 375.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 8.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                AppStrings.appName,
                style: AppStyles.headline28.copyWith(
                  color: AppColors.orange,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 350.w,
              height: 205.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.checkYourWhatsapp,
                    style: AppStyles.headline24.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppStrings.checkYourWhatsappDesc,
                    style: AppStyles.textBody14.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.blueWhale,
                    ),
                  ),
                  Text(
                    AppStrings.ifYouDontReceiveCode,
                    style: AppStyles.textBody14.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.blueWhale,
                    ),
                  ),
                  CustomButton(
                    title: AppStrings.resendLink,
                    onPressed: () {},
                    textColor: AppColors.primary,
                    borderColor: AppColors.orange,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

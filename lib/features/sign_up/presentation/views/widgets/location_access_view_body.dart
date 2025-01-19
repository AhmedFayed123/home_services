import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:home_services/core/constant/app_strings.dart';
import 'package:home_services/core/constant/app_styles.dart';
import 'package:home_services/core/resources/app_assets.dart';
import 'package:home_services/core/utils/widgets/custom_button.dart';

class LocationAccessViewBody extends StatelessWidget {
  const LocationAccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 8.0.h),
        child: Column(
          children: [

            Image.asset(
              AppAssets.addressAmico,
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              '${AppStrings.allowLocationAccess}?',
              style: AppStyles.headline24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0.h),
              child: Text(
                AppStrings.locationAccessDesc,
                textAlign: TextAlign.center,
                style: AppStyles.textBody14.copyWith(
                  color: AppColors.luckyGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            CustomButton(
              title: AppStrings.allowLocationAccess,
              onPressed: () {},
            ),
            SizedBox(
              height: 26.h,
            ),
            Text(
              AppStrings.skipThisStep,
              style: AppStyles.textButton15.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.darkGray,
                decoration: TextDecoration.underline,
                decorationThickness: 1.6,
                decorationColor: AppColors.darkGray,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

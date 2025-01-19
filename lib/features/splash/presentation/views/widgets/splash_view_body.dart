import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:home_services/core/router/routes.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppStrings.appName,
            style: AppStyles.headline36,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0.h),
            child: Text(
              AppStrings.splashDesc,
              textAlign: TextAlign.center,
              style: AppStyles.textBody15,
            ),
          ),
          CustomButton(
            title: AppStrings.signUp,
            onPressed: () {context.go(AppRoutes.signUp);},
            borderColor: AppColors.primary,
            textColor: AppColors.orange,
            buttonColor: AppColors.primary,
          ),
          SizedBox(height: 20.h,),
          CustomButton(
            title: AppStrings.login,
            onPressed: () {},
            borderColor: AppColors.primary,
            textColor: AppColors.primary,
            buttonColor: AppColors.orange,
          ),
          SizedBox(height: 26.h,),
          Text(
            AppStrings.skipThisStep,
            style: AppStyles.textButton15.copyWith(
              decoration: TextDecoration.underline,
              decorationThickness: 1.6,
              decorationColor: AppColors.primary,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ],
      ),
    );
  }
}

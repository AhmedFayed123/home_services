import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/core/router/routes.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
            SizedBox(
              height: 47.h,
            ),
            Text(
              AppStrings.letsResetYourPassword,
              style: AppStyles.headline24.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.resetPasswordDesc,
              style: AppStyles.textBody14.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.luckyGrey,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomTextFormField(
              title: AppStrings.mobileNumber,
              controller: TextEditingController(),
              type: TextInputType.phone,
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomButton(
              title: AppStrings.next,
              onPressed: () {
                context.go(AppRoutes.checkYourWhatsapp);
              },
              textColor: AppColors.primary,
              borderColor: AppColors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

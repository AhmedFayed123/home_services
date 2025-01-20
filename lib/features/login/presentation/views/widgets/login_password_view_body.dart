import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/core/router/routes.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_icons.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';
import '../../../../sign_up/presentation/views/widgets/or_raw.dart';

class LoginPasswordViewBody extends StatelessWidget {
  const LoginPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 8.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.loginToYourAccount,
              style: AppStyles.headline28,
            ),
            SizedBox(
              height: 22.h,
            ),
            CustomTextFormField(
              title: AppStrings.mobileNumber,
              controller: TextEditingController(),
              type: TextInputType.phone,
            ),
            CustomTextFormField(
              title: AppStrings.password,
              controller: TextEditingController(),
              type: TextInputType.text,
              isPassword: true,
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomButton(
              title: AppStrings.continue_,
              onPressed: () {},
              textColor: AppColors.primary,
              borderColor: AppColors.orange,
            ),
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  context.go(AppRoutes.forgotPassword);
                },
                child: Text(
                  '${AppStrings.forgotPassword}?',
                  style: AppStyles.textButton14,
                ),
              ),
            ),
            const OrRaw(),
            CustomButton(
              title: AppStrings.continueWithWhatsApp,
              icon: AppIcons.whatsapp,
              onPressed: () {},
              textColor: AppColors.blueWhale,
              borderColor: AppColors.blueWhale,
              buttonColor: AppColors.primary,
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomButton(
              title: AppStrings.continueWithGmail,
              icon: AppIcons.chat,
              onPressed: () {},
              textColor: AppColors.blueWhale,
              borderColor: AppColors.blueWhale,
              buttonColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:home_services/core/constant/app_icons.dart';
import 'package:home_services/core/constant/app_strings.dart';
import 'package:home_services/core/constant/app_styles.dart';
import 'package:home_services/core/router/routes.dart';
import 'package:home_services/core/utils/widgets/custom_button.dart';
import 'package:home_services/features/sign_up/presentation/views/widgets/or_raw.dart';

import '../../../../../core/utils/widgets/custom_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
              AppStrings.signUpToHome,
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
            SizedBox(
              height: 8.h,
            ),
            CustomButton(
              title: AppStrings.continue_,
              onPressed: () {
                context.go(AppRoutes.completeInfo);
              },
              textColor: AppColors.primary,
              borderColor: AppColors.orange,
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

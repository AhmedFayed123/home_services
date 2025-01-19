import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/features/sign_up/presentation/views/widgets/terms_and_privacy_container.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';
import '../../../../../core/router/routes.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class CompleteInfoViewBody extends StatelessWidget {
  const CompleteInfoViewBody({super.key});

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
              AppStrings.completeYourInfo,
              style: AppStyles.headline28,
            ),
            SizedBox(
              height: 22.h,
            ),
            CustomTextFormField(
              title: AppStrings.firstName,
              controller: TextEditingController(),
              type: TextInputType.text,
            ),
            CustomTextFormField(
              title: AppStrings.lastName,
              controller: TextEditingController(),
              type: TextInputType.text,
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
            const TermsAndPrivacyContainer(),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: AppStrings.next,
              onPressed: () {
                context.go(AppRoutes.locationAccessView);
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

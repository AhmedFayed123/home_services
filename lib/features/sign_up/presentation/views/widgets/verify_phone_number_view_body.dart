import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/constant/app_strings.dart';
import '../../../../../core/constant/app_styles.dart';

class VerifyPhoneNumberViewBody extends StatelessWidget {
  const VerifyPhoneNumberViewBody({super.key});

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
              AppStrings.verifyYourPhoneNumber,
              style: AppStyles.headline24.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppStrings.enterTheCode,
              style: AppStyles.textBody14.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.luckyGrey,
              ),
            ),
            Text(
              AppStrings.number,
              style: AppStyles.textBody14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 236,
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8.r),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeColor: AppColors.mercury,
                  selectedColor: AppColors.mercury,
                  inactiveColor: AppColors.mercury,
                ),
              ),
            ),
            Text(
              AppStrings.didNotReceiveTheCode,
              style: AppStyles.textBody14.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10.h,),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 124,
                height: 34,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.bunker,
                  ),
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
                child: Center(
                  child: Text(
                    AppStrings.resendCode,
                    style: AppStyles.textButton13,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

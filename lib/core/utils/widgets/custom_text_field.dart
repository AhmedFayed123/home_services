import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_services/core/constant/app_strings.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    required this.controller,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
    this.width = 350,
    this.type = TextInputType.text,
    this.errorText,
  });

  final String title;
  final TextEditingController controller;
  final bool isPassword;
  final bool obscureText;
  final double width;
  final VoidCallback? onToggleVisibility;
  final TextInputType type;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.textBody12,
          ),
          SizedBox(
            height: 48.h,
            width: 350.w,
            child: TextField(
              keyboardType: type,
              controller: controller,
              obscureText: isPassword ? obscureText : false,
              style: AppStyles.textBody12,
              decoration: InputDecoration(
                hintText: 'Enter $title',
                hintStyle: AppStyles.textBody12.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: isPassword
                    ? TextButton(
                        onPressed: onToggleVisibility,
                        child: Text(
                          obscureText ? AppStrings.show : AppStrings.show,
                          style: AppStyles.textBody12.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      )
                    : null,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  borderSide: const BorderSide(
                    color: AppColors.borderColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  borderSide: const BorderSide(
                    color: AppColors.borderColor,
                    width: 1,
                  ),
                ),
                errorText: errorText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

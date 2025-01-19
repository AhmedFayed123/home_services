import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
    this.buttonColor = AppColors.orange,
    this.textColor = AppColors.primary,
    this.borderRadius = 50.0,
    this.padding =
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 122.5),
    this.borderColor = AppColors.orange,
    this.icon='',
  });

  final String title;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      child: Container(
        width: 350.w,
        height: 53.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: buttonColor,
        ),
        child: Center(
          child: isLoading
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20.0.w,
                      height: 20.0.h,
                      child: const CircularProgressIndicator(
                        color: AppColors.primary,
                        strokeWidth: 2.0,
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLoading
                        ? LoadingAnimationWidget.waveDots(
                            size: 28,
                            color: textColor,
                          )
                        : Row(
                            children: [
                              if (icon != '') ...[
                                Image.asset(icon, color: textColor,width: 20,height: 20,),
                                SizedBox(width: 10.w),
                              ],
                              Text(
                                title,
                                style: AppStyles.textButton15
                                    .copyWith(color: textColor),
                              ),
                            ],
                          ),
                  ],
                ),
        ),
      ),
    );
  }
}

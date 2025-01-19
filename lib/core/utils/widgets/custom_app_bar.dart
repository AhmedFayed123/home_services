import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_icons.dart';
import '../../constant/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title = '', required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0.h),
        child: SizedBox(
          width: 390.w,
          height: 58.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Text(
                  title,
                  style: AppStyles.textBody14,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    AppIcons.arrowBack,
                    size: 24,
                    color: AppColors.bunker,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

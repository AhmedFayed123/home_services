import 'package:flutter/material.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:home_services/core/constant/app_strings.dart';
import 'package:home_services/core/constant/app_styles.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppStyles.headline36,
        ),
      ),
    );
  }
}

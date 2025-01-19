import 'package:flutter/material.dart';
import 'package:home_services/core/constant/app_colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingSplashWidget extends StatelessWidget {
  const LoadingSplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: LoadingAnimationWidget.waveDots(
          size: 60,
          color: AppColors.blueWhale,
        ),
      ),
    );
  }
}

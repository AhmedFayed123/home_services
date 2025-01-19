import 'package:flutter/material.dart';
import 'package:home_services/features/splash/presentation/views/widgets/splash_view_body.dart';

import '../../../../core/constant/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.orange,
      body: SplashViewBody(),
    );
  }
}

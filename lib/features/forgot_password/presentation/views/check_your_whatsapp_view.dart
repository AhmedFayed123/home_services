import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/features/forgot_password/presentation/views/widgets/check_your_whatsapp_view_body.dart';
import 'package:home_services/features/forgot_password/presentation/views/widgets/rights_container.dart';

import '../../../../core/constant/app_strings.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';

class CheckYourWhatsappView extends StatelessWidget {
  const CheckYourWhatsappView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomAppBar(
                      title: AppStrings.forgotPassword,
                      onPressed: () {
                        context.go(AppRoutes.forgotPassword);
                      },
                    ),
                    const CheckYourWhatsappViewBody(),
                  ],
                ),
              ),
            ),
            const RightsContainer(),
          ],
        ),
      ),
    );
  }
}

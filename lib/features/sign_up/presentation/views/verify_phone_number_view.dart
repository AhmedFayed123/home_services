import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/features/sign_up/presentation/views/widgets/verify_phone_number_view_body.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';

class VerifyPhoneNumberView extends StatelessWidget {
  const VerifyPhoneNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () {
                  context.go(AppRoutes.signUp);
                },
              ),
              const VerifyPhoneNumberViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}

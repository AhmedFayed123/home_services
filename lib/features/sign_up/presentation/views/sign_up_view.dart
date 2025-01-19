import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/features/sign_up/presentation/views/widgets/sign_up_view_body.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () {
                  context.go(AppRoutes.splash);
                },
              ),
              const SignUpViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}

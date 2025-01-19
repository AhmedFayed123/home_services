import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/features/sign_up/presentation/views/widgets/complete_info_view_body.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';

class CompleteInfoView extends StatelessWidget {
  const CompleteInfoView({super.key});

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
              const CompleteInfoViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}

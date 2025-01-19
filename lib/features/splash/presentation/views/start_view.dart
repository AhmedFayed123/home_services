import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/core/router/routes.dart';
import 'package:home_services/features/splash/presentation/views/widgets/loading_splash_widget.dart';
import 'package:home_services/features/splash/presentation/views/widgets/start_view_body.dart';
import '../manger/splash_cubit/splash_cubit.dart';
import '../manger/splash_cubit/splash_state.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..startSplash(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) async {
          if (state is SplashFinished) {
            await Future.delayed(const Duration(seconds: 2));
            context.go(AppRoutes.splash);
          }
        },
        builder: (context, state) {
          if (state is SplashLoading) {
            return const StartViewBody();
          }
          if (state is SplashFinished) {
            return const LoadingSplashWidget();
          }
          return const SizedBox();
        },
      ),
    );
  }
}

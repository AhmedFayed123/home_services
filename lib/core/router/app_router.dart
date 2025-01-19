import 'package:go_router/go_router.dart';
import 'package:home_services/core/router/routes.dart';
import 'package:home_services/features/sign_up/presentation/views/complete_info_view.dart';
import 'package:home_services/features/sign_up/presentation/views/location_access_view.dart';
import 'package:home_services/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:home_services/features/splash/presentation/views/splash_view.dart';

import '../../features/splash/presentation/views/start_view.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.start,
      builder: (context, state) => const StartView(),
    ),
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: AppRoutes.signUp,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: AppRoutes.completeInfo,
      builder: (context, state) => const CompleteInfoView(),
    ),
    GoRoute(
      path: AppRoutes.locationAccessView,
      builder: (context, state) => const LocationAccessView(),
    ),
  ],
);

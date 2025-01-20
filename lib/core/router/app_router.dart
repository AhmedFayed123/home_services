import 'package:go_router/go_router.dart';
import 'package:home_services/core/router/routes.dart';
import 'package:home_services/features/forgot_password/presentation/views/check_your_whatsapp_view.dart';
import 'package:home_services/features/forgot_password/presentation/views/forgot_password_view.dart';
import 'package:home_services/features/login/presentation/views/login_password_view.dart';
import 'package:home_services/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:home_services/features/sign_up/presentation/views/verify_phone_number_view.dart';
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
      path: AppRoutes.login,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (context, state) => const ForgotPasswordView(),
    ),
    GoRoute(
      path: AppRoutes.checkYourWhatsapp,
      builder: (context, state) => const CheckYourWhatsappView(),
    ),
    GoRoute(
      path: AppRoutes.verifyPhone,
      builder: (context, state) => const VerifyPhoneNumberView(),
    ),
  ],
);

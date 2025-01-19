import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:home_services/features/splash/presentation/manger/splash_cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void startSplash() async {
    emit(SplashLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashFinished());
  }
}

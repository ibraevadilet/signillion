import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/splash/splash_cubit/splash_cubit.dart';
import 'package:signillion/server/service_locator.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return Center(
              child: Image.asset(
                AppImages.logo,
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/hidden_drawer.dart';

@RoutePage()
class HomeMain extends StatelessWidget {
  const HomeMain({super.key});
  @override
  Widget build(BuildContext context) {
    return const HiddenDrawer();
  }
}

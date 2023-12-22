import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/widgets/custom_app_bar.dart';

@RoutePage()
class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Forget password'),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}

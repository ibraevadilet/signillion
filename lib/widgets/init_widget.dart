import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:signillion/translations/codegen_loader.g.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      assetLoader: const CodegenLoader(),
      path: 'assets/translations',
      supportedLocales: const [
        Locale('ru'),
        Locale('ky'),
        Locale('en'),
      ],
      fallbackLocale: const Locale('ru'),
      child: child,
    );
  }
}

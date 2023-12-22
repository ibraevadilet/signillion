import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:signillion/core/constants/app_text_constants.dart';
import 'package:signillion/routes/mobile_auto_router.dart';
import 'package:signillion/server/service_locator.dart';
import 'package:signillion/theme/app_theme.dart';
import 'package:signillion/widgets/init_widget.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = sl<AppRouter>();

void main() async {
  await initServiceLocator();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: Builder(
        builder: (context) => MaterialApp.router(
          scaffoldMessengerKey: scaffoldKey,
          theme: lightTheme,
          title: AppTextConstants.appTitle,
          debugShowCheckedModeBanner: false,

          ///Auto router settings
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate(appRouter),
          routeInformationProvider: appRouter.routeInfoProvider(),

          ///Localizations settings
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:signillion/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: ForgetRoute.page),
        CustomRoute(
          page: HiddenDrawerRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: WebViewRoute.page),
        AutoRoute(page: TaskAddRoute.page),
        AutoRoute(page: TasksCalendarRoute.page),
        AutoRoute(page: InviteToSingRoute.page),
        AutoRoute(page: EmailACopyRoute.page),
        AutoRoute(page: DeleteRoute.page),
        AutoRoute(page: DocumetDateilRoute.page),
        AutoRoute(page: DocumentShareRoute.page),
        AutoRoute(page: HistoryRoute.page),
        AutoRoute(page: DocumentMoveToRoute.page),
        AutoRoute(page: DuplicateRoute.page),
        AutoRoute(page: DocumentEditMainRoute.page),
        AutoRoute(page: DocumentDrawSignatureRoute.page),
        AutoRoute(page: DocumentTypeSignatureRoute.page),
      ];
}

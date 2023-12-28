import 'package:auto_route/auto_route.dart';
import 'package:signillion/routes/mobile_auto_router.dart';
import 'package:signillion/server/service_locator.dart';

class AppRouting {
  static pushFunction(PageRouteInfo<dynamic> route) {
    sl<AppRouter>().push(route);
  }

  static popFunction() {
    sl<AppRouter>().pop();
  }

  static pushAndPopUntilFunction(PageRouteInfo<dynamic> route) {
    sl<AppRouter>().pushAndPopUntil(
      route,
      predicate: (route) => false,
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:signillion/features/auth/presentation/auth_screen/auth_screen.dart'
    as _i1;
import 'package:signillion/features/auth/presentation/forget_screen/forget_screen.dart'
    as _i2;
import 'package:signillion/features/auth/presentation/register_screen/register_screen.dart'
    as _i4;
import 'package:signillion/features/home/presentation/home_screen/home_screen.dart'
    as _i3;
import 'package:signillion/features/splash/splash_screen.dart' as _i5;
import 'package:signillion/features/web_view/web_view_screen.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    ForgetRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgetScreen(),
      );
    },
    HomeMain.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeMain(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreen(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WebViewScreen(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgetScreen]
class ForgetRoute extends _i7.PageRouteInfo<void> {
  const ForgetRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ForgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeMain]
class HomeMain extends _i7.PageRouteInfo<void> {
  const HomeMain({List<_i7.PageRouteInfo>? children})
      : super(
          HomeMain.name,
          initialChildren: children,
        );

  static const String name = 'HomeMain';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterScreen]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.WebViewScreen]
class WebViewRoute extends _i7.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i8.Key? key,
    required String title,
    required String url,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            key: key,
            title: title,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i7.PageInfo<WebViewRouteArgs> page =
      _i7.PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.title,
    required this.url,
  });

  final _i8.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;
import 'package:signillion/features/auth/presentation/auth_screen/auth_screen.dart'
    as _i1;
import 'package:signillion/features/auth/presentation/forget_screen/forget_screen.dart'
    as _i11;
import 'package:signillion/features/auth/presentation/register_screen/register_screen.dart'
    as _i15;
import 'package:signillion/features/document_view/presentation/document_delete_screen.dart'
    as _i2;
import 'package:signillion/features/document_view/presentation/document_detail_screen.dart'
    as _i8;
import 'package:signillion/features/document_view/presentation/document_duplicate_screen.dart'
    as _i9;
import 'package:signillion/features/document_view/presentation/document_edit_screens/document_draw_signature_screen.dart'
    as _i3;
import 'package:signillion/features/document_view/presentation/document_edit_screens/document_edit_main_screen.dart'
    as _i4;
import 'package:signillion/features/document_view/presentation/document_edit_screens/document_type_signature_screen.dart'
    as _i7;
import 'package:signillion/features/document_view/presentation/document_email_copy_screen.dart'
    as _i10;
import 'package:signillion/features/document_view/presentation/document_history_screen.dart'
    as _i13;
import 'package:signillion/features/document_view/presentation/document_invite_to_screen.dart'
    as _i14;
import 'package:signillion/features/document_view/presentation/document_move_to_screen.dart'
    as _i5;
import 'package:signillion/features/document_view/presentation/document_share_screen.dart'
    as _i6;
import 'package:signillion/features/hidden/hidden_drawer_screen.dart' as _i12;
import 'package:signillion/features/splash/splash_screen.dart' as _i16;
import 'package:signillion/features/tasks/tasks_add_screen.dart' as _i17;
import 'package:signillion/features/tasks/tasks_calendar_screen.dart' as _i18;
import 'package:signillion/features/web_view/web_view_screen.dart' as _i19;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    DeleteRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DeleteScreen(),
      );
    },
    DocumentDrawSignatureRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DocumentDrawSignatureScreen(),
      );
    },
    DocumentEditMainRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DocumentEditMainScreen(),
      );
    },
    DocumentMoveToRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DocumentMoveToScreen(),
      );
    },
    DocumentShareRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DocumentShareScreen(),
      );
    },
    DocumentTypeSignatureRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.DocumentTypeSignatureScreen(),
      );
    },
    DocumetDateilRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.DocumetDateilScreen(),
      );
    },
    DuplicateRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.DuplicateScreen(),
      );
    },
    EmailACopyRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.EmailACopyScreen(),
      );
    },
    ForgetRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ForgetScreen(),
      );
    },
    HiddenDrawerRoute.name: (routeData) {
      final args = routeData.argsAs<HiddenDrawerRouteArgs>(
          orElse: () => const HiddenDrawerRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.HiddenDrawerScreen(
          key: args.key,
          initScreen: args.initScreen,
        ),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.HistoryScreen(),
      );
    },
    InviteToSingRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.InviteToSingScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RegisterScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SplashScreen(),
      );
    },
    TaskAddRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.TaskAddScreen(),
      );
    },
    TasksCalendarRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.TasksCalendarScreen(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.WebViewScreen(
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
class AuthRoute extends _i20.PageRouteInfo<void> {
  const AuthRoute({List<_i20.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DeleteScreen]
class DeleteRoute extends _i20.PageRouteInfo<void> {
  const DeleteRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DeleteRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DocumentDrawSignatureScreen]
class DocumentDrawSignatureRoute extends _i20.PageRouteInfo<void> {
  const DocumentDrawSignatureRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DocumentDrawSignatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumentDrawSignatureRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DocumentEditMainScreen]
class DocumentEditMainRoute extends _i20.PageRouteInfo<void> {
  const DocumentEditMainRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DocumentEditMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumentEditMainRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DocumentMoveToScreen]
class DocumentMoveToRoute extends _i20.PageRouteInfo<void> {
  const DocumentMoveToRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DocumentMoveToRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumentMoveToRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DocumentShareScreen]
class DocumentShareRoute extends _i20.PageRouteInfo<void> {
  const DocumentShareRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DocumentShareRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumentShareRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DocumentTypeSignatureScreen]
class DocumentTypeSignatureRoute extends _i20.PageRouteInfo<void> {
  const DocumentTypeSignatureRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DocumentTypeSignatureRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumentTypeSignatureRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.DocumetDateilScreen]
class DocumetDateilRoute extends _i20.PageRouteInfo<void> {
  const DocumetDateilRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DocumetDateilRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocumetDateilRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.DuplicateScreen]
class DuplicateRoute extends _i20.PageRouteInfo<void> {
  const DuplicateRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DuplicateRoute.name,
          initialChildren: children,
        );

  static const String name = 'DuplicateRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.EmailACopyScreen]
class EmailACopyRoute extends _i20.PageRouteInfo<void> {
  const EmailACopyRoute({List<_i20.PageRouteInfo>? children})
      : super(
          EmailACopyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailACopyRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ForgetScreen]
class ForgetRoute extends _i20.PageRouteInfo<void> {
  const ForgetRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ForgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HiddenDrawerScreen]
class HiddenDrawerRoute extends _i20.PageRouteInfo<HiddenDrawerRouteArgs> {
  HiddenDrawerRoute({
    _i21.Key? key,
    int initScreen = 0,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          HiddenDrawerRoute.name,
          args: HiddenDrawerRouteArgs(
            key: key,
            initScreen: initScreen,
          ),
          initialChildren: children,
        );

  static const String name = 'HiddenDrawerRoute';

  static const _i20.PageInfo<HiddenDrawerRouteArgs> page =
      _i20.PageInfo<HiddenDrawerRouteArgs>(name);
}

class HiddenDrawerRouteArgs {
  const HiddenDrawerRouteArgs({
    this.key,
    this.initScreen = 0,
  });

  final _i21.Key? key;

  final int initScreen;

  @override
  String toString() {
    return 'HiddenDrawerRouteArgs{key: $key, initScreen: $initScreen}';
  }
}

/// generated route for
/// [_i13.HistoryScreen]
class HistoryRoute extends _i20.PageRouteInfo<void> {
  const HistoryRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.InviteToSingScreen]
class InviteToSingRoute extends _i20.PageRouteInfo<void> {
  const InviteToSingRoute({List<_i20.PageRouteInfo>? children})
      : super(
          InviteToSingRoute.name,
          initialChildren: children,
        );

  static const String name = 'InviteToSingRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RegisterScreen]
class RegisterRoute extends _i20.PageRouteInfo<void> {
  const RegisterRoute({List<_i20.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TaskAddScreen]
class TaskAddRoute extends _i20.PageRouteInfo<void> {
  const TaskAddRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TaskAddRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskAddRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.TasksCalendarScreen]
class TasksCalendarRoute extends _i20.PageRouteInfo<void> {
  const TasksCalendarRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TasksCalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksCalendarRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.WebViewScreen]
class WebViewRoute extends _i20.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i21.Key? key,
    required String title,
    required String url,
    List<_i20.PageRouteInfo>? children,
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

  static const _i20.PageInfo<WebViewRouteArgs> page =
      _i20.PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    this.key,
    required this.title,
    required this.url,
  });

  final _i21.Key? key;

  final String title;

  final String url;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, title: $title, url: $url}';
  }
}

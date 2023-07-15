// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:discourse_app/pages/browse.dart' as _i6;
import 'package:discourse_app/pages/dashboard.dart' as _i2;
import 'package:discourse_app/pages/home.dart' as _i3;
import 'package:discourse_app/pages/login.dart' as _i5;
import 'package:discourse_app/pages/query_list.dart' as _i4;
import 'package:discourse_app/pages/register.dart' as _i1;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    RegisterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RegisterScreen(),
      );
    },
    DashboardRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardRouter(),
      );
    },
    PickSourceRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PickSourceScreen(),
      );
    },
    PickDestRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PickDestScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    QueryListRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.QueryListRouter(),
      );
    },
    QueryListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.QueryListScreen(),
      );
    },
    AnswerListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AnswerListScreen(),
      );
    },
    SuggestDirectionRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SuggestDirectionScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    BrowseRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BrowseRouter(),
      );
    },
    BrowseRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.BrowseScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.RegisterScreen]
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
/// [_i2.DashboardRouter]
class DashboardRouter extends _i7.PageRouteInfo<void> {
  const DashboardRouter({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRouter.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PickSourceScreen]
class PickSourceRoute extends _i7.PageRouteInfo<void> {
  const PickSourceRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PickSourceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PickSourceRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PickDestScreen]
class PickDestRoute extends _i7.PageRouteInfo<void> {
  const PickDestRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PickDestRoute.name,
          initialChildren: children,
        );

  static const String name = 'PickDestRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QueryListRouter]
class QueryListRouter extends _i7.PageRouteInfo<void> {
  const QueryListRouter({List<_i7.PageRouteInfo>? children})
      : super(
          QueryListRouter.name,
          initialChildren: children,
        );

  static const String name = 'QueryListRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QueryListScreen]
class QueryListRoute extends _i7.PageRouteInfo<void> {
  const QueryListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          QueryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'QueryListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AnswerListScreen]
class AnswerListRoute extends _i7.PageRouteInfo<void> {
  const AnswerListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AnswerListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnswerListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SuggestDirectionScreen]
class SuggestDirectionRoute extends _i7.PageRouteInfo<void> {
  const SuggestDirectionRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SuggestDirectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuggestDirectionRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BrowseRouter]
class BrowseRouter extends _i7.PageRouteInfo<void> {
  const BrowseRouter({List<_i7.PageRouteInfo>? children})
      : super(
          BrowseRouter.name,
          initialChildren: children,
        );

  static const String name = 'BrowseRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.BrowseScreen]
class BrowseRoute extends _i7.PageRouteInfo<void> {
  const BrowseRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrowseRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

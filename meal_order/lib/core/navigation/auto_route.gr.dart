// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:meal_order/feature/app/presentation/navigation_page.dart'
    as _i1;
import 'package:meal_order/feature/home/presentation/widgets/section_list.dart'
    as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationRouteArgs>(
          orElse: () => const NavigationRouteArgs());
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.NavigationPage(key: args.key),
      );
    },
    SectionListRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SectionListPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          NavigationRoute.name,
          path: '/navigation-page',
        ),
        _i3.RouteConfig(
          SectionListRoute.name,
          path: '/section-list-page',
        ),
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i3.PageRouteInfo<NavigationRouteArgs> {
  NavigationRoute({_i4.Key? key})
      : super(
          NavigationRoute.name,
          path: '/navigation-page',
          args: NavigationRouteArgs(key: key),
        );

  static const String name = 'NavigationRoute';
}

class NavigationRouteArgs {
  const NavigationRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'NavigationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SectionListPage]
class SectionListRoute extends _i3.PageRouteInfo<void> {
  const SectionListRoute()
      : super(
          SectionListRoute.name,
          path: '/section-list-page',
        );

  static const String name = 'SectionListRoute';
}

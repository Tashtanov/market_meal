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
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:meal_order/main.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>();
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          MyHomeRoute.name,
          path: '/my-home-page',
        )
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i2.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i3.Key? key,
    required String title,
  }) : super(
          MyHomeRoute.name,
          path: '/my-home-page',
          args: MyHomeRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'MyHomeRoute';
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    required this.title,
  });

  final _i3.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

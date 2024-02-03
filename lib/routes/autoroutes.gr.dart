// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_listview/first_page.dart' as _i1;
import 'package:flutter_listview/secoond_page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FirstPage(),
      );
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SecondPage(
          key: args.key,
          brand: args.brand,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.FirstPage]
class FirstRoute extends _i3.PageRouteInfo<void> {
  const FirstRoute({List<_i3.PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i3.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    _i4.Key? key,
    required String brand,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          SecondRoute.name,
          args: SecondRouteArgs(
            key: key,
            brand: brand,
          ),
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const _i3.PageInfo<SecondRouteArgs> page =
      _i3.PageInfo<SecondRouteArgs>(name);
}

class SecondRouteArgs {
  const SecondRouteArgs({
    this.key,
    required this.brand,
  });

  final _i4.Key? key;

  final String brand;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, brand: $brand}';
  }
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../features/tax_type/tax_type_export.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TaxTypeWrapperRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TaxTypeWrapperPage());
    },
    TaxTypeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TaxTypePage());
    },
    AddTaxTypeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AddTaxTypePage());
    },
    EditTaxTypeRoute.name: (routeData) {
      final args = routeData.argsAs<EditTaxTypeRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.EditTaxTypePage(key: args.key, id: args.id));
    },
    TaxTypeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TaxTypeDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.TaxTypeDetailsPage(key: args.key, id: args.id));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(TaxTypeWrapperRoute.name, path: '/', children: [
          _i2.RouteConfig(TaxTypeRoute.name,
              path: '', parent: TaxTypeWrapperRoute.name),
          _i2.RouteConfig(AddTaxTypeRoute.name,
              path: 'add', parent: TaxTypeWrapperRoute.name),
          _i2.RouteConfig(EditTaxTypeRoute.name,
              path: 'edit/:id', parent: TaxTypeWrapperRoute.name),
          _i2.RouteConfig(TaxTypeDetailsRoute.name,
              path: 'details/:id', parent: TaxTypeWrapperRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.TaxTypeWrapperPage]
class TaxTypeWrapperRoute extends _i2.PageRouteInfo<void> {
  const TaxTypeWrapperRoute({List<_i2.PageRouteInfo>? children})
      : super(TaxTypeWrapperRoute.name, path: '/', initialChildren: children);

  static const String name = 'TaxTypeWrapperRoute';
}

/// generated route for
/// [_i1.TaxTypePage]
class TaxTypeRoute extends _i2.PageRouteInfo<void> {
  const TaxTypeRoute() : super(TaxTypeRoute.name, path: '');

  static const String name = 'TaxTypeRoute';
}

/// generated route for
/// [_i1.AddTaxTypePage]
class AddTaxTypeRoute extends _i2.PageRouteInfo<void> {
  const AddTaxTypeRoute() : super(AddTaxTypeRoute.name, path: 'add');

  static const String name = 'AddTaxTypeRoute';
}

/// generated route for
/// [_i1.EditTaxTypePage]
class EditTaxTypeRoute extends _i2.PageRouteInfo<EditTaxTypeRouteArgs> {
  EditTaxTypeRoute({_i3.Key? key, required String id})
      : super(EditTaxTypeRoute.name,
            path: 'edit/:id', args: EditTaxTypeRouteArgs(key: key, id: id));

  static const String name = 'EditTaxTypeRoute';
}

class EditTaxTypeRouteArgs {
  const EditTaxTypeRouteArgs({this.key, required this.id});

  final _i3.Key? key;

  final String id;

  @override
  String toString() {
    return 'EditTaxTypeRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i1.TaxTypeDetailsPage]
class TaxTypeDetailsRoute extends _i2.PageRouteInfo<TaxTypeDetailsRouteArgs> {
  TaxTypeDetailsRoute({_i3.Key? key, required String id})
      : super(TaxTypeDetailsRoute.name,
            path: 'details/:id',
            args: TaxTypeDetailsRouteArgs(key: key, id: id));

  static const String name = 'TaxTypeDetailsRoute';
}

class TaxTypeDetailsRouteArgs {
  const TaxTypeDetailsRouteArgs({this.key, required this.id});

  final _i3.Key? key;

  final String id;

  @override
  String toString() {
    return 'TaxTypeDetailsRouteArgs{key: $key, id: $id}';
  }
}

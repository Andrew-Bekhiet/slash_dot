// Mocks generated by Mockito 5.4.4 from annotations
// in slash_dot/test/features/all_products/bloc/all_products_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:slash_dot/slash_dot.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ProductsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductsService extends _i1.Mock implements _i2.ProductsService {
  @override
  _i3.Future<(List<_i2.Product>, bool)> getProducts({
    required int? page,
    required int? limit,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProducts,
          [],
          {
            #page: page,
            #limit: limit,
          },
        ),
        returnValue: _i3.Future<(List<_i2.Product>, bool)>.value(
            (<_i2.Product>[], false)),
        returnValueForMissingStub: _i3.Future<(List<_i2.Product>, bool)>.value(
            (<_i2.Product>[], false)),
      ) as _i3.Future<(List<_i2.Product>, bool)>);
}
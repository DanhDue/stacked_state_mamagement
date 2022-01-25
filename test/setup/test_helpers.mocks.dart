// Mocks generated by Mockito 5.0.17 from annotations
// in stacked_state_mamagement/test/setup/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:flutter/material.dart' as _i4;
import 'package:get/get.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i3;
import 'package:stacked_state_mamagement/services/counter_service.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [CounterService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCounterService extends _i1.Mock implements _i2.CounterService {
  @override
  int get counter =>
      (super.noSuchMethod(Invocation.getter(#counter), returnValue: 0) as int);
  @override
  void incrementCounter() =>
      super.noSuchMethod(Invocation.method(#incrementCounter, []),
          returnValueForMissingStub: null);
  @override
  void doubleCounter() =>
      super.noSuchMethod(Invocation.method(#doubleCounter, []),
          returnValueForMissingStub: null);
  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
          Invocation.method(#listenToReactiveValues, [reactiveValues]),
          returnValueForMissingStub: null);
  @override
  void addListener(void Function()? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(void Function()? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i3.NavigationService {
  @override
  String get previousRoute =>
      (super.noSuchMethod(Invocation.getter(#previousRoute), returnValue: '')
          as String);
  @override
  String get currentRoute =>
      (super.noSuchMethod(Invocation.getter(#currentRoute), returnValue: '')
          as String);
  @override
  _i4.GlobalKey<_i4.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(Invocation.method(#nestedNavigationKey, [index]))
          as _i4.GlobalKey<_i4.NavigatorState>?);
  @override
  void config(
          {bool? enableLog,
          bool? defaultPopGesture,
          bool? defaultOpaqueRoute,
          Duration? defaultDurationTransition,
          bool? defaultGlobalState,
          String? defaultTransition}) =>
      super.noSuchMethod(
          Invocation.method(#config, [], {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransition: defaultTransition
          }),
          returnValueForMissingStub: null);
  @override
  _i5.Future<T?>? navigateWithTransition<T>(_i4.Widget? page,
          {bool? opaque,
          String? transition = r'',
          Duration? duration,
          bool? popGesture,
          int? id,
          _i4.Curve? curve,
          _i6.Bindings? binding,
          bool? fullscreenDialog = false,
          bool? preventDuplicates = true,
          _i6.Transition? transitionClass}) =>
      (super.noSuchMethod(Invocation.method(#navigateWithTransition, [
        page
      ], {
        #opaque: opaque,
        #transition: transition,
        #duration: duration,
        #popGesture: popGesture,
        #id: id,
        #curve: curve,
        #binding: binding,
        #fullscreenDialog: fullscreenDialog,
        #preventDuplicates: preventDuplicates,
        #transitionClass: transitionClass
      })) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? replaceWithTransition<T>(_i4.Widget? page,
          {bool? opaque,
          String? transition = r'',
          Duration? duration,
          bool? popGesture,
          int? id,
          _i4.Curve? curve,
          _i6.Bindings? binding,
          bool? fullscreenDialog = false,
          bool? preventDuplicates = true,
          _i6.Transition? transitionClass}) =>
      (super.noSuchMethod(Invocation.method(#replaceWithTransition, [
        page
      ], {
        #opaque: opaque,
        #transition: transition,
        #duration: duration,
        #popGesture: popGesture,
        #id: id,
        #curve: curve,
        #binding: binding,
        #fullscreenDialog: fullscreenDialog,
        #preventDuplicates: preventDuplicates,
        #transitionClass: transitionClass
      })) as _i5.Future<T?>?);
  @override
  bool back<T>({dynamic result, int? id}) => (super.noSuchMethod(
      Invocation.method(#back, [], {#result: result, #id: id}),
      returnValue: false) as bool);
  @override
  void popUntil(_i4.RoutePredicate? predicate) =>
      super.noSuchMethod(Invocation.method(#popUntil, [predicate]),
          returnValueForMissingStub: null);
  @override
  void popRepeated(int? popTimes) =>
      super.noSuchMethod(Invocation.method(#popRepeated, [popTimes]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<T?>? navigateTo<T>(String? routeName,
          {dynamic arguments,
          int? id,
          bool? preventDuplicates = true,
          Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#navigateTo, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #preventDuplicates: preventDuplicates,
        #parameters: parameters
      })) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? navigateToView<T>(_i4.Widget? view,
          {dynamic arguments,
          int? id,
          bool? opaque,
          _i4.Curve? curve,
          _i6.Bindings? binding,
          Duration? duration,
          bool? fullscreenDialog = false,
          bool? popGesture,
          bool? preventDuplicates = true,
          _i6.Transition? transition}) =>
      (super.noSuchMethod(Invocation.method(#navigateToView, [
        view
      ], {
        #arguments: arguments,
        #id: id,
        #opaque: opaque,
        #curve: curve,
        #binding: binding,
        #duration: duration,
        #fullscreenDialog: fullscreenDialog,
        #popGesture: popGesture,
        #preventDuplicates: preventDuplicates,
        #transition: transition
      })) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? replaceWith<T>(String? routeName,
          {dynamic arguments,
          int? id,
          bool? preventDuplicates = true,
          Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#replaceWith, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #preventDuplicates: preventDuplicates,
        #parameters: parameters
      })) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearStackAndShow<T>(String? routeName,
          {dynamic arguments, int? id, Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#clearStackAndShow, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #parameters: parameters
      })) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearTillFirstAndShow<T>(String? routeName,
          {dynamic arguments,
          int? id,
          bool? preventDuplicates = true,
          Map<String, String>? parameters}) =>
      (super.noSuchMethod(Invocation.method(#clearTillFirstAndShow, [
        routeName
      ], {
        #arguments: arguments,
        #id: id,
        #preventDuplicates: preventDuplicates,
        #parameters: parameters
      })) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? clearTillFirstAndShowView<T>(_i4.Widget? view,
          {dynamic arguments, int? id}) =>
      (super.noSuchMethod(Invocation.method(#clearTillFirstAndShowView, [view],
          {#arguments: arguments, #id: id})) as _i5.Future<T?>?);
  @override
  _i5.Future<T?>? pushNamedAndRemoveUntil<T>(String? routeName,
          {_i4.RoutePredicate? predicate, dynamic arguments, int? id}) =>
      (super.noSuchMethod(Invocation.method(#pushNamedAndRemoveUntil, [
        routeName
      ], {
        #predicate: predicate,
        #arguments: arguments,
        #id: id
      })) as _i5.Future<T?>?);
}
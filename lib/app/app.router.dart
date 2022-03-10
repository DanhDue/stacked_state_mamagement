// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/sample/future_example/future_example_view.dart';
import '../ui/sample/partial_builds/partial_build_view.dart';
import '../ui/sample/reactive_example/reactive_example_view.dart';
import '../ui/sample/stream_example/stream_example_view.dart';
import '../ui/views/activity/activity_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/onboard/onboard_view.dart';
import '../ui/views/profile/profile_view.dart';
import '../ui/views/splash/splash_view.dart';
import '../ui/views/workout/workout_view.dart';

class Routes {
  static const String splashView = '/';
  static const String loginView = '/login-view';
  static const String onboardView = '/onboard-view';
  static const String homeView = '/home-view';
  static const String workoutView = '/workout-view';
  static const String activityView = '/activity-view';
  static const String profileView = '/profile-view';
  static const String partialBuildsView = '/partial-builds-view';
  static const String reactiveExampleView = '/reactive-example-view';
  static const String futureExampleView = '/future-example-view';
  static const String stream = '/stream-example-view';
  static const all = <String>{
    splashView,
    loginView,
    onboardView,
    homeView,
    workoutView,
    activityView,
    profileView,
    partialBuildsView,
    reactiveExampleView,
    futureExampleView,
    stream,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.onboardView, page: OnboardView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.workoutView, page: WorkoutView),
    RouteDef(Routes.activityView, page: ActivityView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.partialBuildsView, page: PartialBuildsView),
    RouteDef(Routes.reactiveExampleView, page: ReactiveExampleView),
    RouteDef(Routes.futureExampleView, page: FutureExampleView),
    RouteDef(Routes.stream, page: StreamExampleView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    OnboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OnboardView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    WorkoutView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const WorkoutView(),
        settings: data,
      );
    },
    ActivityView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ActivityView(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
    PartialBuildsView: (data) {
      var args = data.getArgs<PartialBuildsViewArguments>(
        orElse: () => PartialBuildsViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PartialBuildsView(key: args.key),
        settings: data,
      );
    },
    ReactiveExampleView: (data) {
      var args = data.getArgs<ReactiveExampleViewArguments>(
        orElse: () => ReactiveExampleViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReactiveExampleView(key: args.key),
        settings: data,
      );
    },
    FutureExampleView: (data) {
      var args = data.getArgs<FutureExampleViewArguments>(
        orElse: () => FutureExampleViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FutureExampleView(key: args.key),
        settings: data,
      );
    },
    StreamExampleView: (data) {
      var args = data.getArgs<StreamExampleViewArguments>(
        orElse: () => StreamExampleViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => StreamExampleView(
          key: args.key,
          userName: args.userName,
          email: args.email,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PartialBuildsView arguments holder class
class PartialBuildsViewArguments {
  final Key? key;
  PartialBuildsViewArguments({this.key});
}

/// ReactiveExampleView arguments holder class
class ReactiveExampleViewArguments {
  final Key? key;
  ReactiveExampleViewArguments({this.key});
}

/// FutureExampleView arguments holder class
class FutureExampleViewArguments {
  final Key? key;
  FutureExampleViewArguments({this.key});
}

/// StreamExampleView arguments holder class
class StreamExampleViewArguments {
  final Key? key;
  final String? userName;
  final String? email;
  StreamExampleViewArguments({this.key, this.userName, this.email});
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../data/remote/api_service.dart';
import '../data/repository/impl/post_repository_impl.dart';
import '../data/repository/post_repository.dart';
import '../ui/views/activity/activity_view_model.dart';
import '../ui/views/profile/profile_view_model.dart';
import '../ui/views/program/program_view_model.dart';
import '../ui/views/workout/workout_view_model.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton<PostRepository>(() => PostRepositoryImpl());
  locator.registerSingleton(ProgramViewModel());
  locator.registerSingleton(WorkoutViewModel());
  locator.registerSingleton(ActivityViewModel());
  locator.registerSingleton(ProfileViewModel());
}

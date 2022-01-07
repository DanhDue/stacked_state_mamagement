import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_mamagement/data/remote/api_service.dart';
import 'package:stacked_state_mamagement/data/repository/impl/post_repository_impl.dart';
import 'package:stacked_state_mamagement/data/repository/post_repository.dart';
import 'package:stacked_state_mamagement/services/counter_service.dart';
import 'package:stacked_state_mamagement/ui/sample/future_example/future_example_view.dart';
import 'package:stacked_state_mamagement/ui/sample/partial_builds/partial_build_view.dart';
import 'package:stacked_state_mamagement/ui/sample/reactive_example/reactive_example_view.dart';
import 'package:stacked_state_mamagement/ui/sample/stream_example/stream_example_view.dart';
import 'package:stacked_state_mamagement/ui/views/activity/activity_view.dart';
import 'package:stacked_state_mamagement/ui/views/activity/activity_view_model.dart';
import 'package:stacked_state_mamagement/ui/views/home/home_view.dart';
import 'package:stacked_state_mamagement/ui/views/login/login_view.dart';
import 'package:stacked_state_mamagement/ui/views/onboard/onboard_view.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view_model.dart';
import 'package:stacked_state_mamagement/ui/views/program/program_view_model.dart';
import 'package:stacked_state_mamagement/ui/views/splash/splash_view.dart';
import 'package:stacked_state_mamagement/ui/views/workout/workout_view.dart';
import 'package:stacked_state_mamagement/ui/views/workout/workout_view_model.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: OnboardView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: WorkoutView),
  MaterialRoute(page: ActivityView),
  MaterialRoute(page: ProfileView),
  MaterialRoute(page: PartialBuildsView),
  MaterialRoute(page: ReactiveExampleView),
  MaterialRoute(page: FutureExampleView),
  MaterialRoute(page: StreamExampleView),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: ApiService),
  LazySingleton(classType: PostRepositoryImpl, asType: PostRepository),
  Singleton(classType: ProgramViewModel),
  Singleton(classType: WorkoutViewModel),
  Singleton(classType: ActivityViewModel),
  Singleton(classType: ProfileViewModel),
  LazySingleton(classType: CounterService),
])
class AppConfigurations {}

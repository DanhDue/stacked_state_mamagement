import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_mamagement/data/remote/api_service.dart';
import 'package:stacked_state_mamagement/data/repository/impl/post_repository_impl.dart';
import 'package:stacked_state_mamagement/data/repository/post_repository.dart';
import 'package:stacked_state_mamagement/ui/views/activity/activity_view.dart';
import 'package:stacked_state_mamagement/ui/views/home/home_view.dart';
import 'package:stacked_state_mamagement/ui/views/login/login_view.dart';
import 'package:stacked_state_mamagement/ui/views/onboard/onboard_view.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view.dart';
import 'package:stacked_state_mamagement/ui/views/splash/splash_view.dart';
import 'package:stacked_state_mamagement/ui/views/workout/workout_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OnboardView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: WorkoutView),
    MaterialRoute(page: ActivityView),
    MaterialRoute(page: ProfileView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: PostRepositoryImpl, asType: PostRepository),
  ]
)
class AppConfigurations { }

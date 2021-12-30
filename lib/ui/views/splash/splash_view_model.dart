import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';

class SplashViewModel extends BaseViewModel {
  bool _animationComplete = false;
  final _navigationService = locator<NavigationService>();

  void indicateAnimationComplete() {
    _animationComplete = true;
    _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }
}

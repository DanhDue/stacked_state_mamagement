import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';

@singleton
class ActivityViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToPartialBuildsView() {
    Fimber.d('navigateToPartialBuildsView()');
    _navigationService.navigateTo(Routes.partialBuildsView);
  }
}

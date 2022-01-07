import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';
import 'package:stacked_state_mamagement/data/remote/response/post_response.dart';
import 'package:stacked_state_mamagement/data/repository/post_repository.dart';

@singleton
class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _userRepository = locator<PostRepository>();
  List<PostRes>? users;

  @override
  void dispose() {
    Fimber.d('dispose()');
    super.dispose();
  }

  void getUserProfile() async {
    Fimber.d('getUserProfile()');
    if (users != null) return;
    users = await _userRepository.getPostsForUser(1);
    Fimber.d('users: $users');
    notifyListeners();
  }

  void navigateToLogin() async {
    Fimber.d('navigateToLogin()');
    _navigationService.navigateTo(Routes.loginView);
  }
}

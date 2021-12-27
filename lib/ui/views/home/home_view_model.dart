import 'package:fimber/fimber.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/data/repository/post_repository.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _userRepository = locator<PostRepository>();

  void getUserProfile() async {
    final userProfile = await _userRepository.getPostsForUser(1);
    Fimber.d('$userProfile');
  }
}

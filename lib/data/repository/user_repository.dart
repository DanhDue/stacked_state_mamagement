import 'package:stacked_state_mamagement/data/remote/response/user_response.dart';

abstract class UserRepository {
  Future<UserResponse> getUserProfile(int userId);
}

import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/data/remote/api_service.dart';
import 'package:stacked_state_mamagement/data/remote/response/post_response.dart';
import 'package:stacked_state_mamagement/data/repository/post_repository.dart';

class PostRepositoryImpl extends PostRepository {
  final _apiService = locator<ApiService>();
  @override
  Future<List<PostRes>?> getPostsForUser(int userId) => _apiService.getPostsForUser(userId);
}

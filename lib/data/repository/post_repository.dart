import 'package:injectable/injectable.dart';
import 'package:stacked_state_mamagement/data/remote/response/post_response.dart';

@lazySingleton
abstract class PostRepository {
  Future<List<PostRes>?> getPostsForUser(int userId);
}

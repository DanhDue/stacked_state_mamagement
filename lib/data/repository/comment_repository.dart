import 'package:stacked_state_mamagement/data/remote/response/comment_response.dart';

abstract class CommentRepository {
  Future<List<CommentRes>?> getCommentsForPost(int postId);
}

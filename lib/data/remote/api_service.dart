import 'package:injectable/injectable.dart';
import 'package:stacked_state_mamagement/data/remote/network_constants.dart';
import 'package:stacked_state_mamagement/data/remote/response/comment_response.dart';
import 'package:stacked_state_mamagement/data/remote/response/post_response.dart';
import 'package:stacked_state_mamagement/data/remote/response/user_response.dart';
import 'package:vexana/vexana.dart';

@lazySingleton
class ApiService {
  INetworkManager? networkManager;

  ApiService() {
    networkManager = NetworkManager(
        isEnableLogger: true, options: BaseOptions(baseUrl: baseUrl));
  }

  Future<List<CommentRes>?> getCommentsForPost(int postId) async {
    final response = await networkManager?.send('/comments?postId=$postId',
        parseModel: CommentRes(), method: RequestType.GET);
    return response?.data;
  }

  Future<List<PostRes>?> getPostsForUser(int userId) async {
    final response = await networkManager?.send('/posts?userId=$userId',
        parseModel: PostRes(), method: RequestType.GET);
    return response?.data;
  }

  Future<UserResponse> getUserProfile(int userId) async {
    final response = await networkManager?.send('/users/$userId',
        parseModel: UserResponse(), method: RequestType.GET);
    return response?.data;
  }
}

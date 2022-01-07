import 'package:vexana/vexana.dart';

class PostRes extends INetworkModel<PostRes> {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostRes({this.userId, this.id, this.title, this.body});

  PostRes.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }

  @override
  PostRes fromJson(Map<String, dynamic> json) => PostRes.fromJson(json);
}

import 'package:vexana/vexana.dart';

class CommentRes extends INetworkModel<CommentRes>{
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentRes({this.postId, this.id, this.name, this.email, this.body});

  CommentRes.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }

  @override
  CommentRes fromJson(Map<String, dynamic> json) => CommentRes.fromJson(json);
}
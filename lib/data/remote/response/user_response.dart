import 'package:vexana/vexana.dart';

class UserResponse extends INetworkModel<UserResponse> {
  int? id;
  String? name;
  String? username;
  UserResponse({this.id, this.name, this.username});

  UserResponse.initial()
      : id = 0,
        name = '',
        username = '';

  UserResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    return data;
  }

  @override
  UserResponse fromJson(Map<String, dynamic> json) =>
      UserResponse.fromJson(json);
}

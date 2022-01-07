import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
abstract class User with _$User {

  const User._();
  const factory User({
    required String id,
    @Default(null) String? email,
    @Default(null) String? address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  bool get hasAddress => address?.isNotEmpty ?? false;
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    @Default(null) String? id,
    @Default(null) String? placeId,
    @Default(null) double? lattitude,
    @Default(null) double? longitute,
    @Default(null) String? street,
    @Default(null) String? city,
    @Default(null) String? state,
    @Default(null) String? postalCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

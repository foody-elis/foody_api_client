// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../request/user_login_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginRequestDto _$UserLoginRequestDtoFromJson(Map<String, dynamic> json) =>
    UserLoginRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserLoginRequestDtoToJson(
        UserLoginRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

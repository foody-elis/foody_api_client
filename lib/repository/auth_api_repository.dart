import 'package:dio/dio.dart';
import 'package:foody_api_client/dto/request/user_login_request_dto.dart';
import 'package:foody_api_client/dto/response/auth_response_dto.dart';
import 'package:foody_api_client/dto/response/user_response_dto.dart';
import 'package:retrofit/http.dart';

import '../dto/request/user_registration_request_dto.dart';
import '../dto/response/employee_user_response_dto.dart';

part 'generated/auth_api_repository.g.dart';

@RestApi()
abstract class AuthApiRepository {
  factory AuthApiRepository(Dio dio, {String? baseUrl}) = _AuthApiRepository;

  @POST('/customers')
  Future<AuthResponseDto> registerCustomer(
      @Body() UserRegistrationRequestDto _);

  @POST('/restaurateurs')
  Future<AuthResponseDto> registerRestaurateur(
      @Body() UserRegistrationRequestDto _);

  @POST('/login')
  Future<AuthResponseDto> login(@Body() UserLoginRequestDto _);

  @GET('/user')
  Future<EmployeeUserResponseDto> getAuthenticatedEmployee();

  @GET('/user')
  Future<UserResponseDto> getAuthenticatedUser();
}

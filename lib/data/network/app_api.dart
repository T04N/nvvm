import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:nvvm/app/constant.dart';
import 'package:nvvm/data/responses/responses.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio,
      {String? baseUrl, ParseErrorLogger? errorLogger}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationsResponse> login(
      @Field("email") String email,
      @Field("password") String password,
      @Field("imei") String imei,
      @Field("device_type") String deviceType,
      );

  @POST("/customers/forgotPassword")
  Future<ForgotPasswordResponse> forgotPassword(
      @Field("email") String email
      );
}

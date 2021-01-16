import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:one_farm/utils/app_url.dart';

import 'custom_exception.dart';

typedef ConvertJson = dynamic Function(Map<String, dynamic>);
typedef ProgressListener = void Function(int total, int progress, int percent);
typedef OnCallApiSuccess<T> = void Function(T data);
typedef OnCallApiFailure = void Function(int statusCode, String statusMessage);
typedef OnQueryCompleted = void Function(bool isSuccess, String message);

class ApiProvider {

  Dio _dio;

  BaseOptions options = new BaseOptions(
      baseUrl: AppUrl.baseURL,
      responseType: ResponseType.plain
  );

  ApiCaller() {
    _dio = Dio(options);
    _dio.interceptors.add(LogInterceptor(
        responseBody: true
    ));
  }

  Future<dynamic> get(String path) async {
    var responseJson;
    try {
      Response response = await _dio.get(path);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String path, Map<String, dynamic> params) async {
    var responseJson;
    try {
      Response response = await _dio.post(path, data: params);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  /*Future<BaseResponse<T>> get<T>(String path) async {
    BaseResponse baseResponse;
    try {
      Response response = await _dio.get(path);
      baseResponse = BaseResponse<T>.fromJson(_response(response));
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return baseResponse;
  }

  Future<BaseResponse<T>> post<T>(String path, Map<String, dynamic> params) async {
    BaseResponse baseResponse;
    try {
      Response response = await _dio.post(path, data: params);
      baseResponse = BaseResponse<T>.fromJson(_response(response));
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return baseResponse;
  }*/

  dynamic _response(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.data.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:
      default:
        throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
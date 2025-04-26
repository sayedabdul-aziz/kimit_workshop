import 'package:dio/dio.dart';

class DioProvider {
  static late Dio _dio;

  static init() {
    _dio = Dio(BaseOptions(baseUrl: 'https://api.example.com/'));
  }

  static Future<Response> get(
      {required String endpoint,
      Object? data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    return await _dio.get(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers));
  }

  static Future<Response> post(
      {required String endpoint,
      Object? data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    return await _dio.post(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers));
  }

  static Future<Response> put(
      {required String endpoint,
      Object? data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    return await _dio.put(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers));
  }

  static Future<Response> delete(
      {required String endpoint,
      Object? data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    return await _dio.delete(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers));
  }
}

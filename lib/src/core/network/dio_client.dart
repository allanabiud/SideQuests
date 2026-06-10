import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dioClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.example.com', // Change this in your implementation
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  dio.interceptors.add(
    LogInterceptor(
      requestBody: true,
      responseBody: true,
    ),
  );

  return dio;
}

class ApiError implements Exception {
  final String message;
  final int? statusCode;

  ApiError(this.message, {this.statusCode});

  @override
  String toString() => message;
}

extension DioErrorExtension on DioException {
  ApiError toApiError() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiError('Connection timed out. Please try again.');
      case DioExceptionType.badResponse:
        final message = response?.data?['message'] ?? 'Something went wrong';
        return ApiError(message, statusCode: response?.statusCode);
      case DioExceptionType.connectionError:
        return ApiError('No internet connection.');
      default:
        return ApiError('An unexpected error occurred.');
    }
  }
}

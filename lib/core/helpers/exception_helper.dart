// import 'dart:convert';

import 'dart:convert';

import 'package:dio/dio.dart';

import '../../features/repo/data/model/error/error_model.dart';
import '../infrastructure/data/data_state.dart';

class ExceptionHelper {
  static DataFailure handleDioException(
    DioException exception, {
    int? statusCode,
  }) {
    try {
      if (exception.type == DioExceptionType.connectionTimeout) {
        return DataFailure(
          ErrorModel.fromString('Connection Timed Out!! Please Try Again.'),
        );
      } else if (exception.type == DioExceptionType.receiveTimeout) {
        return DataFailure(
          ErrorModel.fromString('Receive Time Out!! Please Try Again.'),
        );
      } else if (exception.type == DioExceptionType.sendTimeout) {
        return DataFailure(
          ErrorModel.fromString('Send Time Out!! Please Try Again.'),
        );
      }
      final encodedResponse = json.encode(exception.response?.data);
      var errorResponse = errorModelFromJson(encodedResponse);
      return DataFailure(errorResponse);
    } catch (e) {
      return handleException(exception.response?.data);
    }
  }

  static DataFailure handleException(e) {
    return DataFailure(
      ErrorModel.fromString(e?.toString()),
    );
  }
}

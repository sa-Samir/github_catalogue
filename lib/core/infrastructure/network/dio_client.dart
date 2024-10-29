import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../features/repo/data/model/error/error_model.dart';
import '../../constants/enums.dart';
import '../../constants/type_defs.dart';
import '../../helpers/exception_helper.dart';
import '../data/data_state.dart';
import 'connection/connection_cubit.dart';

class DioClient {
  final Dio _dio;
  final ConnectionCubit connectionCubit;
  DioClient(this._dio, this.connectionCubit);

  bool get _hasConnection =>
      connectionCubit.state == ConnectionStatus.connected;
  final _noInternetText =
      'No Internet. Please Check Your Connection and Try Again';

  Future<DataState> get(
    String url, {
    JsonMap? headers,
  }) async {
    if (_hasConnection) {
      try {
        var response = await _dio.get(
          url,
          options: Options(headers: headers),
        );
        var encodedResponse = json.encode(response.data);
        if ((response.statusCode ?? 400) >= 200 &&
            (response.statusCode ?? 400) <= 299) {
          return DataSuccess(encodedResponse);
        } else {
          final error = errorModelFromJson(encodedResponse);
          return DataFailure(error);
        }
      } on DioException catch (e) {
        return ExceptionHelper.handleDioException(e);
      } catch (e) {
        return ExceptionHelper.handleException(e);
      }
    } else {
      return DataFailure(ErrorModel.fromString(_noInternetText));
    }
  }
}

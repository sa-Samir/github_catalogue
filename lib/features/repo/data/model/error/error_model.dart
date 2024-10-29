import 'dart:convert';

import '../../../../../core/constants/type_defs.dart';

ErrorModel? errorModelFromJson(String? data) =>
    ErrorModel.fromJson(json.decode(data ?? ''));

class ErrorModel {
  final String? message;

  ErrorModel({
    required this.message,
  });

  factory ErrorModel.fromJson(JsonMap json) => ErrorModel(
        message: json['message']?.toString(),
      );

  factory ErrorModel.fromString(String? data) => ErrorModel(
        message: data,
      );
}

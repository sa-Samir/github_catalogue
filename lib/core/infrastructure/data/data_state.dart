import '../../../features/repo/data/model/error/error_model.dart';

abstract class DataState<T> {
  final T? data;
  final ErrorModel? error;

  const DataState({
    this.data,
    this.error,
  });
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailure extends DataState {
  const DataFailure(ErrorModel? error) : super(error: error);
}

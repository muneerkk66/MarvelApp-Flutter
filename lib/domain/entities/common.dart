import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class Cancellable<T> {
  final Future<T> call;
  final CancelToken token;

  Cancellable(this.call, this.token);
}

class ResponseEntity<T> {
  final T? data;
  final Exception? exception;

  const ResponseEntity(this.data, this.exception);

  factory ResponseEntity.success(T data) => ResponseEntity(data, null);

  factory ResponseEntity.failure(Exception exception) =>
      ResponseEntity(null, exception);
}

extension ResponseEntityUtil on ResponseEntity<dynamic> {
  bool get isSuccess => exception == null;
}

abstract class ApiResponse<T> {
  int get code;

  T get data;
}

abstract class PaginatedData<T> {
  int get offset;

  int get limit;

  int get total;

  int get count;

  IList<T> get results;
}

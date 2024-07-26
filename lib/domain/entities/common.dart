import 'package:dio/dio.dart';

class Cancellable<T> {
  final Future<T> call;
  final CancelToken token;

  Cancellable(this.call, this.token);
}

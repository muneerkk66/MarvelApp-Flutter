import 'package:dio/dio.dart';

class ErrorHandler {
  const ErrorHandler();

  String getErrorMessage(dynamic exception) {
    String errorDescription;
    if (exception is DioExceptionType) {
      switch (exception) {
        case DioExceptionType.cancel:
          errorDescription = "Request to API server was cancelled";
          break;
        case DioExceptionType.unknown:
          errorDescription = "No Internet Connection";
          break;
        case DioExceptionType.receiveTimeout:
          errorDescription = "Receive timeout in connection with API server";
          break;
        case DioExceptionType.badResponse:
          errorDescription = "Received invalid status code";
          break;
        default:
          errorDescription = "Connection timeout with API server";
          break;
      }
    } else {
      errorDescription = "Oops! Something went wrong. Please try again.";
    }
    return errorDescription;
  }
}

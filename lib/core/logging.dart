import 'package:logger/logger.dart';

final _logger = Logger();
void log({dynamic message, dynamic error, StackTrace? stackTrace}) {
  if (error == null) {
    _logger.d(message);
  } else {
    _logger.e(error);
  }
}

import 'dart:convert';

import 'package:crypto/crypto.dart';

import '../../build_config.dart';

class ApiUtils {
  final String currentTimestamp =
      DateTime.now().millisecondsSinceEpoch.toString();

  late String hash = md5
      .convert(utf8.encode(
          currentTimestamp + BuildConfig.CLIENT_ID + BuildConfig.API_KEY))
      .toString();
}

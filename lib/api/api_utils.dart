import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:marvel_app/build_config.g.dart';

class ApiUtils {
  final String currentTimestamp =
      DateTime.now().millisecondsSinceEpoch.toString();

  late String hash = md5
      .convert(utf8.encode(
          currentTimestamp + BuildConfig.api_key + BuildConfig.client_id))
      .toString();
}

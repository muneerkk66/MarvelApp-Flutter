import 'dart:io';

class PlatformMeta {
  const PlatformMeta._();

  static const instance = PlatformMeta._();

  bool get isIos => Platform.isIOS;

  bool get isAndroid => Platform.isAndroid;

  bool get isWindows => Platform.isWindows;

  bool get isMac => Platform.isMacOS;

  bool get isLinux => Platform.isLinux;

  bool get isFuchsia => Platform.isFuchsia;
}

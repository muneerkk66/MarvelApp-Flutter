import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/inject/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureInjection() async => $initGetIt(getIt);

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marvel_app/inject/injector.dart';
import 'package:marvel_app/presentation/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(EntryPoint());
}

class EntryPoint extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MainApp(
      initScreen: HomeScreen(),
    );
  }
}

class MainApp extends StatelessWidget {
  final Widget initScreen;

  const MainApp({Key? key, required this.initScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: initScreen,
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marvel_app/inject/injector.dart';
import 'package:marvel_app/ui/home/home_screen.dart';

Future<void> main({Injector? injector}) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (injector == null) {
    await Injector.setup(instance: injector);
  }
  runZoned(() {
    runApp(EntryPoint());
  });
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterstructure/list_view.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListWidget(),
      ),
    );
  }
}

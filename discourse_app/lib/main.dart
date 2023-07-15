import 'package:discourse_app/route/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// assuing this is the root widget of your App
class MyApp extends StatelessWidget {
  MyApp({super.key});
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

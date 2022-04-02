import 'package:flutter/material.dart';
import 'config/config_export.dart';

class RootMaterialApp extends StatefulWidget {
  const RootMaterialApp({Key? key}) : super(key: key);

  @override
  State<RootMaterialApp> createState() => _RootMaterialAppState();
}

class _RootMaterialAppState extends State<RootMaterialApp> {
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

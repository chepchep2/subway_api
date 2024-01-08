import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_api/routes.dart';
import 'package:subway_api/ui/main/main_screen.dart';
import 'package:subway_api/ui/main/main_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
    );
  }
}

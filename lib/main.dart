import 'package:flutter/material.dart';
import 'package:kimit_workshop/core/services/dio_provider.dart';
import 'package:kimit_workshop/core/services/locator.dart';
import 'package:kimit_workshop/core/services/shared_pref.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioProvider.init();
  SharedPref.init();
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

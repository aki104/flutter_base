import 'package:base_app/app.dart';
import 'package:base_app/provider/sharedpreferences/preference_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  late final SharedPreferences sharedPreferences;
  await Future.wait([
    Future(() async {
      sharedPreferences = await SharedPreferences.getInstance();
    })
  ]);

  runApp(ProviderScope(overrides: [
    sharedPreferenceProvider.overrideWithValue(sharedPreferences),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

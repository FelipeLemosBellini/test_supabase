import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:test_supabase/core/repositories/settings/interface_settings.dart';
import 'package:test_supabase/core/repositories/settings/settings.dart';
import 'package:test_supabase/di/injection_dependencies.dart';
import 'package:test_supabase/routes/route_generate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ISettings iSettings = Settings();
  await iSettings.initializedEnvironments(fileName: ".env-settings");

  await Supabase.initialize(
    url: await iSettings.getData(environmentVariable: "URL"),
    anonKey: await iSettings.getData(environmentVariable: "KEY"),
  );

  DI.setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteGenerate.router,
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}

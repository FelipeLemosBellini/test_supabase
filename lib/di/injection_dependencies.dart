import 'package:get_it/get_it.dart';
import 'package:test_supabase/core/repositories/settings/interface_settings.dart';
import 'package:test_supabase/core/repositories/settings/settings.dart';

abstract class DI {
  static final getIt = GetIt.I;
  static void setupDependencies() {
    getIt.registerLazySingleton<ISettings>(() => Settings());
    // getIt.registerLazySingleton<IFirebaseAnalytics>(() => RepositoryFirebaseAnalytic());
  }
}

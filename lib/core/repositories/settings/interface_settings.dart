import 'package:test_supabase/core/models/environment_model.dart';

abstract class ISettings {
  Future<void> initializedEnvironments({required String fileName});

  Future<String> getData({required String environmentVariable});

  Future<EnvironmentModel> getAllData();
}

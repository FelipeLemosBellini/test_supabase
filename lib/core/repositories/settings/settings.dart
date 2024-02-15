import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_supabase/core/models/environment_model.dart';
import 'package:test_supabase/core/repositories/settings/interface_settings.dart';

class Settings implements ISettings {
  @override
  Future<void> initializedEnvironments({required String fileName}) async {
    await dotenv.load(fileName: fileName);
  }

  @override
  Future<String> getData({required String environmentVariable}) async {
    return dotenv.get(environmentVariable, fallback: "Not found");
  }

  @override
  Future<EnvironmentModel> getAllData() async {
    return EnvironmentModel.fromMap(map: dotenv.env);
  }
}

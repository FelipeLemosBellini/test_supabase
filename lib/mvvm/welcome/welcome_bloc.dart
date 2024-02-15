import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_supabase/core/models/environment_model.dart';
import 'package:test_supabase/core/repositories/settings/interface_settings.dart';
import 'package:test_supabase/mvvm/welcome/welcome_view_model.dart';

class WelcomeBloc extends Cubit<WelcomeViewModel> {
  final ISettings _settings = GetIt.instance<ISettings>();
  WelcomeBloc() : super(WelcomeViewModel());

  void getDataEnvironment() async {
    String url = await _settings.getData(environmentVariable: 'URL');
    print("URL: $url");
  }

  void getAllDataEnvironments() async {
    EnvironmentModel model = await _settings.getAllData();
    print("Completed URL: ${model.url}/${model.key}");
  }
}

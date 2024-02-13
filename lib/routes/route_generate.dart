import 'package:go_router/go_router.dart';
import 'package:test_supabase/mvvm/welcome/welcome_page.dart';
import 'package:test_supabase/routes/route_names.dart';

abstract class RouteGenerate {
  static dynamic _param(Object? map, String arg) {
    Map<String, dynamic>? args = map as Map<String, dynamic>;
    return args[arg];
  }

  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(path: RouteNames.initial, builder: (context, state) => const WelcomePage()),
  ]);
}
// quando passa no pathParameters null ele quebra
// no extra eu consigo tratar esse null

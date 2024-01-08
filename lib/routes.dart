import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:subway_api/ui/main/main_screen.dart';
import 'package:subway_api/ui/main/main_view_model.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(),
          child: MainScreen(),
        );
      }),
]);

import 'package:auto_route/annotations.dart';
import 'package:meal_order/main.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage),
  ],
)
class $AppRouter {}

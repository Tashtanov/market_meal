import 'package:auto_route/annotations.dart';
import 'package:meal_order/main.dart';

import '../../feature/app/presentation/navigation_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: NavigationPage,
    )
  ],
)
class $AppRouter {}

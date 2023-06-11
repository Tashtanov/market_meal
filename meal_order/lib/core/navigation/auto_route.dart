import 'package:auto_route/annotations.dart';
import 'package:meal_order/main.dart';

import '../../feature/app/presentation/navigation_page.dart';
import '../../feature/home/presentation/widgets/section_list.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NavigationPage),
    AutoRoute(page: SectionListPage),
  ],
)
class $AppRouter {}

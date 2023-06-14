/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_order/core/client/client.dart';

/* Local dependencies */
import 'package:meal_order/core/navigation/auto_route.gr.dart';
import 'package:meal_order/core/navigation/navigation.dart';
import 'core/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  getIt.registerSingleton<AppRouter>(AppRouter());
  
  await ScreenUtil.ensureScreenSize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = Navigation.router;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(initialRoutes: [NavigationRoute()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

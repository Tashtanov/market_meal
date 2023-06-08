import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_order/core/injection/injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
Future<void> configureInjection() async => getIt.init();

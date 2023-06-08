import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_order/feature/app/presentation/widgets/custom_navigation.dart';

import '../../../core/injection/injection.dart';
import 'bloc/app_bloc.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  final AppBloc appBloc = getIt<AppBloc>();
  final List<Widget> _pages = const [
    // HomePage(),
    // HomePage(),
    // HomePage(),
    // HomePage(),
    // HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: appBloc,
      buildWhen: (p, c) => p.currentPageIndex != c.currentPageIndex,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          body: _pages[state.currentPageIndex],
          bottomNavigationBar: CustomNavigationBar(
            currentIndex: state.currentPageIndex,
          ),
        );
      },
    );
  }
}

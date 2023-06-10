import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_order/core/helpers/theme_helper.dart';

import '../../../../core/helpers/screen_util.dart';
import '../../../../core/injection/injection.dart';
import '../bloc/app_bloc.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final AppBloc appBloc = getIt<AppBloc>();

  CustomNavigationBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: ThemeHelper.primary,
      selectedLabelStyle: TextHelper.normal10,
      unselectedLabelStyle: TextHelper.normal10,
      selectedIconTheme: const IconThemeData(
        color: ThemeHelper.primary,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.black87,
      ),
      enableFeedback: false,
      currentIndex: currentIndex,
      onTap: (index) {
        appBloc.add(CurrentPageIndexChanged(index: index));
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/images/svg/home.svg",
            color: ThemeHelper.primary,
          ),
          icon: SvgPicture.asset("assets/images/svg/home.svg"),
          label: 'Главная,',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/images/svg/search.svg",
            color: ThemeHelper.primary,
          ),
          icon: SvgPicture.asset("assets/images/svg/search.svg"),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/images/svg/basket.svg",
            color: ThemeHelper.primary,
          ),
          icon: SvgPicture.asset("assets/images/svg/basket.svg"),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/images/svg/profile.svg",
            color: ThemeHelper.primary,
          ),
          icon: SvgPicture.asset("assets/images/svg/profile.svg"),
          label: 'Аккаунт',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_order/core/helpers/dummy_data.dart';
import 'package:meal_order/core/navigation/auto_route.gr.dart';

import '../../../../core/helpers/theme_helper.dart';
import '../../../../core/navigation/navigation.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigation.router.push(SectionListRoute());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Stack(children: [
          SizedBox(
            height: 148.h,
            width: 1.sw,
            child: Image.network(image),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 16).r,
            child: SizedBox(
              width: 0.5.sw,
              child: Text(
                "Пекарни и кондитерские ",
                style: TextHelper.normal20,
                maxLines: 2,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

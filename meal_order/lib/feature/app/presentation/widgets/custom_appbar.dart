/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* Local dependencies */
import 'package:meal_order/core/helpers/theme_helper.dart';
import '../../../../core/navigation/navigation.dart';

class CustomAppBar extends StatelessWidget {
  final String? name;
  const CustomAppBar({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          name != null
              ? Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigation.router.pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            name!,
                            style: TextHelper.normal18,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        children: [
                          Text(
                            "Санкт-Петербург",
                            style: TextHelper.normal18,
                          ),
                          Text(
                            "12 Августа, 2023",
                            style: TextHelper.medium14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          SizedBox(
            height: 44.h,
            width: 44.w,
            child: Image.asset(
              'assets/images/profoto.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

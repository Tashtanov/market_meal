import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_order/core/helpers/theme_helper.dart';
import 'package:meal_order/core/navigation/navigation.dart';

import '../../../../core/helpers/dummy_data.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showGeneralDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
          barrierColor: Colors.black45,
          transitionDuration: const Duration(milliseconds: 200),
          pageBuilder:
              (BuildContext buildContext, Animation animation, Animation secondaryAnimation) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16).r,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: ThemeHelper.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  width: 1.sw,
                  height: 446.h,
                  padding: const EdgeInsets.all(16).r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        Container(
                          height: 232.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                            color: ThemeHelper.boxBackground,
                            image:
                                DecorationImage(image: NetworkImage(image2), fit: BoxFit.contain),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: ThemeHelper.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.r),
                                    ),
                                  ),
                                  child: const Icon(Icons.favorite_border),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              GestureDetector(
                                onTap: () {
                                  Navigation.router.pop();
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: ThemeHelper.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.r),
                                    ),
                                  ),
                                  child: Icon(Icons.close),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 8.h),
                      Text(
                        "Рыба с овощами и рисом",
                        style: TextHelper.normal16.copyWith(color: ThemeHelper.black),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "799 ₽ · 560г",
                        style: TextHelper.medium14.copyWith(color: ThemeHelper.black),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой",
                        style: TextHelper.medium14.copyWith(color: ThemeHelper.black, height: 1),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 16.h),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 48,
                              width: 1.sw,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Добавить в корзину",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(ThemeHelper.primary)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
      child: Column(
        children: [
          Container(
            height: 110.h,
            decoration: BoxDecoration(
              color: ThemeHelper.boxBackground,
              borderRadius: BorderRadius.all(
                const Radius.circular(10).r,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  image2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Text(
            "Салат по восточному",
            overflow: TextOverflow.ellipsis,
            style: TextHelper.medium14,
            maxLines: 3,
          )
        ],
      ),
    );
  }
}

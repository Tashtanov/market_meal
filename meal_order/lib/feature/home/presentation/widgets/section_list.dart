import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_order/core/helpers/theme_helper.dart';
import 'package:meal_order/feature/home/presentation/widgets/item_card.dart';

import '../../../app/presentation/widgets/custom_appbar.dart';

class SectionListPage extends StatefulWidget {
  const SectionListPage({super.key});

  @override
  State<SectionListPage> createState() => _SectionListPageState();
}

class _SectionListPageState extends State<SectionListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).r,
          child: Column(
            children: [
              const CustomAppBar(
                name: "Азиатская кухня",
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 35.h,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4).r,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ThemeHelper.boxBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ).r,
                          child: Text(
                            "Все меню",
                            style: TextHelper.medium14,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 150.h,
                    mainAxisSpacing: 14.r,
                    crossAxisSpacing: 8.r,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

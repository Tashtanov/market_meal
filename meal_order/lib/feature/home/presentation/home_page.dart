/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_order/core/injection/injection.dart';

/* Local dependencies */
import 'package:meal_order/feature/home/presentation/widgets/meal_section_card.dart';
import '../../app/presentation/widgets/custom_appbar.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = getIt<HomeBloc>();
  @override
  void initState() {
    _bloc.add(GetSections());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          bloc: _bloc,
          builder: (context, state) {
            // print(state.sections.length);
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16).r,
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return CustomAppBar();
                }
                return SectionCard();
              },
            );
          },
        ),
      ),
    );
  }
}

// FutureBuilder<dynamic>(
//             future: client.getSections(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 print(snapshot.data);
//                 // final List<Section>? sections = snapshot.data;
//                 return ListView.builder(
//                   padding: const EdgeInsets.symmetric(horizontal: 16).r,
//                   itemCount: 2,
//                   shrinkWrap: true,
//                   itemBuilder: (BuildContext context, int index) {
//                     if (index == 0) {
//                       return CustomAppBar();
//                     }
//                     return SectionCard();
//                   },
//                 );
//               } else {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             }),
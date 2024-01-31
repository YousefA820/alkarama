import 'package:flutter/material.dart';

import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_app_bar.dart';

import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_controller.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/bottom_nav.dart';
import 'package:sp1_e_commerce/ui/views/main_view/about_club_view/about_club_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/matches_view/matches-view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/results_view/results_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/meuseum_view/meuseum_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late int pageIndex = 0;
  MainViewController mcontroller = Get.put(MainViewController());
  PageController controller = PageController();
  BottomNavigationEnum selectedView = BottomNavigationEnum.HOME;
  List<String> appBarTitle = [
    "نادي الكرامة الرياضي",
    "النتائج",
    "المباريات",
    "عن النادي",
    "المتحف"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: CustomAppBar(
              title: appBarTitle[pageIndex],
            ),
            preferredSize: Size.fromHeight(75)),
        floatingActionButton: Padding(
          padding: EdgeInsetsDirectional.only(top: screenWidth(30)),
          child: InkWell(
            onTap: () {
              controller.jumpToPage(2);
              setState(() {
                pageIndex = 2;
                selectedView = BottomNavigationEnum.MATCHES;
              });
            },
            child: Container(
              width: screenWidth(5),
              height: screenWidth(5),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadiusDirectional.circular(60),
                  image: DecorationImage(
                      image: AssetImage("assets/images/pngs/club.png"))),
            ),
          ),
        ),
        key: mcontroller.scaffoldKey,
        bottomNavigationBar: BgNav(
          selected: selectedView,
          mainTap: (selectedEnum, index) {
            setState(() {
              selectedView = selectedEnum;
              pageIndex = index;
            });
            controller.jumpToPage(index);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: PageView(
          onPageChanged: (value) {
            pageIndex = value;
            selectedView = BottomNavigationEnum.values[value];
            setState(() {});
          },
          controller: controller,
          children: [
            HomeView(),
            ResultsView(),
            MatchesView(),
            AboutClubView(),
            MeuseumView(),
          ],
        ));
  }
}

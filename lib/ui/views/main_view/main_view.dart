
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_controller.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/bottom_nav.dart';
import 'package:sp1_e_commerce/ui/views/main_view/notification_view/notification_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/search_view/search_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/settings_view/settings_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}


class _MainViewState extends State<MainView> {
  
  MainViewController mcontroller = Get.put(MainViewController());
  PageController controller = PageController();
  BottomNavigationEnum selectedView = BottomNavigationEnum.HOME;
   icontap(){
  mcontroller. scaffoldKey.currentState!.openDrawer();
}
  // ignore: unused_local_variable

  //
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            
            key:mcontroller. scaffoldKey,
            bottomNavigationBar: BgNav(
              ondTap: () {
                // ignore: unused_label
                openDrawer:
                () {
                 mcontroller. scaffoldKey.currentState!.openDrawer();
                };
              },
              selected: selectedView,
              mainTap: (selectedEnum, index) {
                setState(() {
                  selectedView = selectedEnum;
                });
                controller.jumpToPage(index);
              },
            ),
            backgroundColor: AppColors.blueColor,
            body: PageView(
              // physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [Home(), Favorite(), Notifications(), Settings()],
            )));
  }
 
}

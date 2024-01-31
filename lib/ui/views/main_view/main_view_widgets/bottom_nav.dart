import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/nav_item.dart';

enum BottomNavigationEnum {
  HOME,
  RESULTS,
  MATCHES,
  ABOUT,
  MEUSEUM,
}

class BgNav extends StatefulWidget {
  final Function(BottomNavigationEnum, int) mainTap;
  // final Function ondTap;
  const BgNav({
    super.key,
    required this.mainTap,
    required this.selected,
  });
  final BottomNavigationEnum selected;
  @override
  State<BgNav> createState() => _BgNavState();
}

class _BgNavState extends State<BgNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: screenWidth(5),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: screenWidth(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Item(
              text: 'الرئيسية',
              icon: "home",
              onTap: () {
                widget.mainTap(BottomNavigationEnum.HOME, 0);
              },
              isSelected: widget.selected == BottomNavigationEnum.HOME,
            ),
            Item(
              text: 'النتائج',
              icon: "results",
              onTap: () {
                widget.mainTap(BottomNavigationEnum.RESULTS, 1);
              },
              isSelected: widget.selected == BottomNavigationEnum.RESULTS,
            ),
            Column(
              children: [
                SizedBox(
                  height: screenWidth(12.5),
                ),
                Item(
                  text: 'المباريات',
                  icon: "",
                  onTap: () {
                    widget.mainTap(BottomNavigationEnum.MATCHES, 2);
                  },
                  isSelected: widget.selected == BottomNavigationEnum.MATCHES,
                ),
              ],
            ),
            Item(
              text: 'عن النادي',
              icon: "improvement",
              onTap: () {
                widget.mainTap(BottomNavigationEnum.ABOUT, 3);
              },
              isSelected: widget.selected == BottomNavigationEnum.ABOUT,
            ),
            Item(
              text: 'المتحف',
              icon: "museum",
              ondTap: () {},
              onTap: () {
                widget.mainTap(BottomNavigationEnum.MEUSEUM, 4);
              },
              isSelected: widget.selected == BottomNavigationEnum.MEUSEUM,
            ),
          ],
        ),
      ),
    );
  }
}

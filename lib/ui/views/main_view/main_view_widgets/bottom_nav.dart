import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/nav_item.dart';

enum BottomNavigationEnum { HOME, SEARCH, NOTIFICATIONS, SETTINGS }

class BgNav extends StatefulWidget {
  final Function(BottomNavigationEnum, int) mainTap;
  final Function ondTap;
  const BgNav(
      {super.key,
      required this.mainTap,
      required this.selected,
      required this.ondTap});
  final BottomNavigationEnum selected;
  @override
  State<BgNav> createState() => _BgNavState();
}

class _BgNavState extends State<BgNav> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      width: size.width,
      height: screenWidth(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Item(
            text: 'المتحف',
            icon: Icons.home_outlined,
            ondTap: () {},
            onTap: () {
              widget.mainTap(BottomNavigationEnum.HOME, 0);
            },
            isSelected: widget.selected == BottomNavigationEnum.HOME,
          ),
          Item(
            text: 'عن النادي',
            icon: Icons.search,
            onTap: () {
              widget.mainTap(BottomNavigationEnum.SEARCH, 1);
            },
            isSelected: widget.selected == BottomNavigationEnum.SEARCH,
          ),
          Item(
            text: 'المباريات',
            icon: Icons.notification_add_outlined,
            onTap: () {
              widget.mainTap(BottomNavigationEnum.NOTIFICATIONS, 2);
            },
            isSelected: widget.selected == BottomNavigationEnum.NOTIFICATIONS,
          ),
          Item(
            text: 'النتائج',
            icon: Icons.notification_add_outlined,
            onTap: () {
              widget.mainTap(BottomNavigationEnum.NOTIFICATIONS, 2);
            },
            isSelected: widget.selected == BottomNavigationEnum.NOTIFICATIONS,
          ),
          Item(
            text: 'الرئيسية',
            icon: Icons.menu,
            onTap: () {
              widget.mainTap(BottomNavigationEnum.SETTINGS, 3);
            },
            isSelected: widget.selected == BottomNavigationEnum.SETTINGS,
          ),
        ],
      ),
    );
  }
}

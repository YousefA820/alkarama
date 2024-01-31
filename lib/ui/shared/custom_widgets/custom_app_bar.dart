import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: Container(
          width: screenWidth(1),
          height: screenHeight(1),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(10),
                start: screenWidth(30),
                end: screenWidth(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: screenWidth(20),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: screenWidth(10),
                        child: Image.asset("assets/images/pngs/club.png")),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                        width: screenWidth(10),
                        height: screenWidth(10),
                        child: Image.asset("assets/images/pngs/club.png")),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        preferredSize: Size.fromHeight(75));
  }
}

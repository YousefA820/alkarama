import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomCarouselRow extends StatelessWidget {
  final String iconPath;
  final String title;
  const CustomCarouselRow(
      {super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: screenWidth(70)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenWidth(20),
            child: Image.asset("assets/images/pngs/$iconPath.png"),
          ),
          SizedBox(
            width: screenWidth(40),
          ),
          Text(
            title.toString(),
            style: TextStyle(
                color: AppColors.whiteColor, fontSize: screenWidth(26)),
          ),
        ],
      ),
    );
  }
}

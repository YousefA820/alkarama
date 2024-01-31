import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomBorder extends StatefulWidget {
  final int containerWidth1;
  final int containerWidth2;
  final int containerWidth3;
  const CustomBorder(
      {super.key,
      required this.containerWidth1,
      required this.containerWidth2,
      required this.containerWidth3});

  @override
  State<CustomBorder> createState() => _CustomBorderState();
}

class _CustomBorderState extends State<CustomBorder> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.blueColor,
          ),
          width: screenWidth(widget.containerWidth1.toDouble()),
          height: screenWidth(80),
        ),
        SizedBox(
          width: screenWidth(200),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.orangeColor),
          width: screenWidth(widget.containerWidth2.toDouble()),
          height: screenWidth(80),
        ),
        SizedBox(
          width: screenWidth(200),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.blueColor,
          ),
          width: screenWidth(widget.containerWidth3.toDouble()),
          height: screenWidth(80),
        )
      ],
    );
  }
}

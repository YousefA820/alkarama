import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class Item extends StatefulWidget {
  final String icon;
  final String text;
  final bool? isSelected;
  final Function onTap;
  final Function? ondTap;
  const Item(
      {super.key,
      required this.icon,
      this.isSelected = false,
      required this.onTap,
      this.ondTap,
      required this.text});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: screenWidth(80)),
        child: Container(
          width: screenWidth(6),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/svgs/${widget.icon}.svg',
                color: widget.isSelected!
                    ? AppColors.orangeColor
                    : AppColors.whiteColor,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: screenWidth(28),
                  color: widget.isSelected!
                      ? AppColors.orangeColor
                      : AppColors.whiteColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

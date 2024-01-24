import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class Item extends StatefulWidget {
  final IconData icon;
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
          width: screenWidth(8),
          child: Column(
            children: [
              Icon(
                widget.icon,
                color: widget.isSelected!
                    ? AppColors.orangeColor
                    : AppColors.whiteColor,
                size: screenWidth(11),
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: screenWidth(25),
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

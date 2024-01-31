import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';

import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_app_bar.dart';

class MeuseumView extends StatefulWidget {
  const MeuseumView({super.key});

  @override
  State<MeuseumView> createState() => _MeuseumViewState();
}

class _MeuseumViewState extends State<MeuseumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Text("المتحف"),
      ),
    );
  }
}

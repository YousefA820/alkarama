import 'package:flutter/material.dart';

import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_app_bar.dart';

class ResultsView extends StatelessWidget {
  const ResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(
        children: [
          Center(
            child: Text("النتائج"),
          ),
        ],
      ),
    );
  }
}

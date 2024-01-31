import 'package:flutter/material.dart';

import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_app_bar.dart';
class AboutClubView extends StatefulWidget {
  const AboutClubView({super.key});

  @override
  State<AboutClubView> createState() => _AboutClubViewState();
}

class _AboutClubViewState extends State<AboutClubView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: InkWell(
          onTap: () {
            // openDrawer();
          },
          child: Text(
            'AboutClubView',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

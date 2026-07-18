import 'package:flutter/material.dart';

import '../../../../utils/app_assets.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.imgHadethBackground), fit: BoxFit.cover),
      ),
      child: const Center(child: Text("Ahadeth Tab")),
    );
  }
}

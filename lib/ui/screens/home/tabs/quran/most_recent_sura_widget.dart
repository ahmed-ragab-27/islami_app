import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/sura_dm.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_text_styles.dart';

import '../../../../utils/app_colors.dart';

class MostRecentSuraWidget extends StatelessWidget {
  final SuraDm suraDm;

  const MostRecentSuraWidget({super.key, required this.suraDm});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(suraDm.suraNameEn, style: AppTextStyles.black24Bold),
                SizedBox(height: 8),
                Text(suraDm.suraNameAr, style: AppTextStyles.black24Bold),
                SizedBox(height: 8),
                Text('${suraDm.verses} Verses', style: AppTextStyles.black14Bold),
              ],
            ),
          ),
          Image.asset(AppAssets.imgMostRecent),
        ],
      ),
    );
  }
}

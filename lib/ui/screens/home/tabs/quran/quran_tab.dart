import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/most_recent_sura_widget.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/search_field_widget.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/sura_dm.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/sura_widget.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_constants.dart';
import 'package:islami_app/ui/utils/app_text_styles.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<SuraDm> searchableList = [];
  String searchText = '';

  @override
  void initState() {
    for (var sura in suras) {
      searchableList.add(sura);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.imgQuranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(child: Image.asset(AppAssets.islamiLogo)),
          const SizedBox(height: 20),
          SearchFieldWidget(onChanged: _search),
          if (searchText.isEmpty) ...[
            const SizedBox(height: 20),
            Text('Most Recently ', style: AppTextStyles.white16Bold),
            Expanded(flex: 4, child: buildMostRecentSurasList()),
          ],
          const SizedBox(height: 10),
          Text('Suras List', style: AppTextStyles.white16Bold),
          Expanded(
            flex: 6,
            child: searchText.isNotEmpty && searchableList.isEmpty
                ? Center(
                    child: Text(
                      'No sura found has name: $searchText',
                      style: AppTextStyles.white20Bold,
                    ),
                  )
                : buildSurasListView(),
          ),
        ],
      ),
    );
  }

  Widget buildSurasListView() => ListView.separated(
    padding: EdgeInsets.symmetric(vertical: 8),
    separatorBuilder: (_, index) => Divider(indent: 64, endIndent: 64),
    itemCount: searchableList.length,
    itemBuilder: (_, index) => SuraWidget(searchableList[index]),
  );

  Widget buildMostRecentSurasList() {
    return ListView.builder(
      itemCount: 50,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => MostRecentSuraWidget(suraDm: suras[1]),
    );
  }

  void _search(String suraName) {
    searchText = suraName;
    searchableList = suras
        .where(
          (sura) =>
              sura.suraNameEn.toLowerCase().contains(suraName.toLowerCase()) ||
              sura.suraNameAr.contains(suraName),
        )
        .toList();
    setState(() {});
  }
}

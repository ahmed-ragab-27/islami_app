import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/screens/home/tabs/quran/sura_dm.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_text_styles.dart';

class SuraDetailsScreen extends StatefulWidget {
  final SuraDm suraDm;

  const SuraDetailsScreen({super.key, required this.suraDm});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  String suraContent = '';

  @override
  void initState() {
    super.initState();
    readSuraContent();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.suraDm.suraNameEn,
            style: AppTextStyles.gold20Bold,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: AppColors.gold),
          ),
        ),
        backgroundColor: AppColors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex:1,child: Image.asset(AppAssets.imgLeftCorner,)),
                    Expanded(flex:3,child: Center(child: Text(widget.suraDm.suraNameAr, style: AppTextStyles.gold24Bold,))),
                    Expanded(flex:1,child: Image.asset(AppAssets.imgRightCorner, )),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Text(
                      suraContent,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: AppTextStyles.gold20Bold,
                    ),
                  ),
                ),
              ),
              Image.asset(AppAssets.imgMosqueGold)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> readSuraContent() async {
    String fileName = 'assets/files/suras/${widget.suraDm.index}.txt';
    suraContent = await rootBundle.loadString(fileName);
    List<String> lines = suraContent.split('\n');
    for (int i = 0; i < lines.length; i++) {
      lines[i] += "(${i + 1}) ";
    }
    suraContent = lines.join();
    setState(() {});
  }
}

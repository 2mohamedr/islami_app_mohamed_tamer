import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/colors.dart';
import 'package:islami/core/constants/assets/constant.dart';
import 'package:islami/core/servaices/local_keys.dart';
import 'package:islami/core/servaices/local_storeage_.dart';
import 'package:islami/models/sura_data.dart';
import 'package:islami/modules/quran/quran_details_view.dart';
import 'package:islami/modules/quran/recently_sura_widget.dart';
import 'package:islami/modules/quran/sura_list_widget.dart';

import '../../core/constants/assets/images.dart';

class QuranView extends StatefulWidget {

  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  @override
  void initState() {
    super.initState();
    loadRecentData();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.quranBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(Assets.logoAppBar)),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    cursorColor: ColorsPallete.PrimaryColor,
                    decoration: InputDecoration(
                      hintText: "Sura Name",
                      hintStyle: Theme.of(context).textTheme.bodyLarge,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: ColorsPallete.PrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: ColorsPallete.PrimaryColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: ColorsPallete.PrimaryColor,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ImageIcon(
                          AssetImage(Assets.quranWhiteIcons),
                          color: ColorsPallete.PrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),

                RecentlySuraWidget(
                  suraData: recentSuraList,
                ),

                SuraListWidget(onSuraTab: onSuraTab),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> recentSuraIndexList = [];
  List<SuraData> recentSuraList = [];

  onSuraTab(int index) {
    recentSuraIndexList.add(index.toString());
    LocalStoreage.setStringList(
      LocalStorageKeys.recentSura,
      recentSuraIndexList,
    );
    Navigator.pushNamed(
      context,
      QuranDetailsView.routeName,
      arguments: Constants.suraDataList[index],
    );
  }

  loadRecentData() {
    recentSuraIndexList =
        LocalStoreage.getStringList(LocalStorageKeys.recentSura) ?? [];
    for (var index in recentSuraIndexList) {
      int indexInt = int.parse(index);

      recentSuraList.add(Constants.suraDataList[indexInt]);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/assets/colors.dart';
import 'package:islami/models/sura_data.dart';

import '../../core/constants/assets/images.dart';

class QuranDetailsView extends StatefulWidget {
  static const routeName = "quran_details";

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    final SuraData data =
        ModalRoute.of(context)!.settings.arguments as SuraData;
    if (verses.isEmpty) loadDataFromAssets(data.suraId);
    return Scaffold(
      backgroundColor: ColorsPallete.quranDetailsColor,
      appBar: AppBar(title: Text(data.suraNameEr)),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.leftCorner, height: 90, width: 90),
                    Image.asset(Assets.rightCorner, height: 90, width: 90),
                  ],
                ),
              ),
              Image.asset(Assets.bottomDecoration),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                data.suraNameAr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: ColorsPallete.PrimaryColor,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      "${verses[index]}[${index + 1}]",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: ColorsPallete.PrimaryColor,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 4);
                  },
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> loadDataFromAssets(String suraID) async {
    String contant = await rootBundle.loadString(
      "assets/dataQuran/${suraID}.txt",
    );
    verses = contant.split("\n");
    setState(() {});
  }
}

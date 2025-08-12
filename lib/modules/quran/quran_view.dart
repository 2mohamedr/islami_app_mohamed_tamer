import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/colors.dart';
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
                const SizedBox(height: 20),
                const RecentlySuraWidget(),
                const SizedBox(height: 20),
                const SuraListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

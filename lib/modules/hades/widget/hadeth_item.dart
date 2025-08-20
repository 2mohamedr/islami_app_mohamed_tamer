import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/colors.dart';
import 'package:islami/core/constants/assets/images.dart';
import 'package:islami/models/hadse_data.dart';

class HadethItem extends StatelessWidget {
  const HadethItem({super.key, required this.hadeithDataModel});

  final HadeithDataModel hadeithDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      width: 310,
      decoration: BoxDecoration(
        color: ColorsPallete.PrimaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        children: [
          /// خلفية شفافة
          Opacity(
            opacity: 0.15,
            child: Image.asset(
              Assets.mostResent,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          /// الزخارف
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.hadesLeftCorner, height: 80, width: 80),
                    Image.asset(Assets.hadesRightCorner, height: 80, width: 80),
                  ],
                ),
              ),
              Image.asset(Assets.hadesBottomDecoration),
            ],
          ),

          /// نص الحديث
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: ListView(
              children: [
                Text(
                  hadeithDataModel.hadeithTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: ColorsPallete.quranDetailsColor,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  hadeithDataModel.hadeithContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.6,
                    color: ColorsPallete.quranDetailsColor.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

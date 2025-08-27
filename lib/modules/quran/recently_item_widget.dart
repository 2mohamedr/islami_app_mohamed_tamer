import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/colors.dart';
import 'package:islami/models/sura_data.dart';

import '../../core/constants/assets/images.dart';

class RecentlyItemWidget extends StatelessWidget {
  const RecentlyItemWidget({super.key, required this.suraData});

  final SuraData suraData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: ColorsPallete.PrimaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  suraData.suraNameEr,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  suraData.suraNameAr,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  suraData.suraVersesNumber,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),

          Image.asset(Assets.mostResent),
        ],
      ),
    );
  }
}

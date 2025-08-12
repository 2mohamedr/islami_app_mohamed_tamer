import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/colors.dart';

import '../../core/constants/assets/images.dart';

class RecentlyItemWidget extends StatelessWidget {
  const RecentlyItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
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
                  "AL_Anbyia",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "الانبياء",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "122 Verses",
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

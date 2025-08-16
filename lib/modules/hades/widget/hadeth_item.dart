import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/colors.dart';
import 'package:islami/core/constants/assets/images.dart';

class HadethItem extends StatelessWidget {
  const HadethItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      width: 310,

      decoration: BoxDecoration(
        color: ColorsPallete.PrimaryColor,
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(image: AssetImage(Assets.mostResent)),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.hadesLeftCorner, height: 90, width: 90),
                    Image.asset(Assets.hadesRightCorner, height: 90, width: 90),
                  ],
                ),
              ),
              Image.asset(Assets.hadesBottomDecoration),
            ],
          ),
        ],
      ),
    );
  }
}

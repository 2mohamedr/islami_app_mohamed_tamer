import 'package:flutter/material.dart';
import 'package:islami/models/sura_data.dart';
import 'package:islami/modules/quran/quran_details_view.dart';

import '../../core/constants/assets/images.dart';

class SuraListItem extends StatelessWidget {
  final SuraData suraData;

  const SuraListItem({super.key, required this.suraData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          QuranDetailsView.routeName,
          arguments: suraData,
        );
      },

      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.suraNumber),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              suraData.suraId,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraData.suraNameEr,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
              Text(
                "${suraData.suraVersesNumber} Verses",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraData.suraNameAr,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

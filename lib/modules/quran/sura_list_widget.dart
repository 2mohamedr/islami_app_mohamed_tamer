import 'package:flutter/material.dart';
import 'package:islami/core/constants/assets/constant.dart';
import 'package:islami/modules/quran/sura_list_item.dart';

class SuraListWidget extends StatelessWidget {
  const SuraListWidget({super.key, required this.onSuraTab});

  final void Function(int) onSuraTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sura List", style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 10),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 20),
            itemBuilder: (context, index) {
              return SuraListItem(
                  onSuraTab: () => onSuraTab(index),
                  suraData: Constants.suraDataList[index]);
            },

            separatorBuilder: (context, index) {
              return Divider();
            },

            itemCount: Constants.suraDataList.length,
          ),
        ],
      ),
    );
  }
}

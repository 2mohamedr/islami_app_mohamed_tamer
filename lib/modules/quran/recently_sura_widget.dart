import 'package:flutter/material.dart';
import 'package:islami/models/sura_data.dart';
import 'package:islami/modules/quran/quran_details_view.dart';
import 'package:islami/modules/quran/recently_item_widget.dart';


class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key, required this.suraData});

  final List<SuraData> suraData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Most Recently",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),

            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    QuranDetailsView.routeName,
                    arguments: suraData[index],
                  );
                },
                child: RecentlyItemWidget(suraData: suraData[index]),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemCount: suraData.length,
          ),
        ),
      ],
    );
  }
}

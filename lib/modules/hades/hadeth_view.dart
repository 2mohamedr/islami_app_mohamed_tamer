import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadse_data.dart';
import 'package:islami/modules/hades/widget/hadeth_item.dart';
import '../../core/constants/assets/images.dart';

class HadethView extends StatefulWidget {
  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadeithDataModel> hadetkData = [];

  @override
  void initState() {
    super.initState();
    loadDataFrohadeth();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.hadethBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(Assets.hadesHeader),
          if (hadetkData.isEmpty)
            const Center(child: CircularProgressIndicator())
          else
            CarouselSlider(
              items: hadetkData
                  .map((h) => HadethItem(hadeithDataModel: h))
                  .toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.6,
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
              ),
            ),
        ],
      ),
    );
  }

  Future<void> loadDataFrohadeth() async {
    for (int i = 1; i <= 50; i++) {
      String hadeth = await rootBundle.loadString("assets/dataHadeeth/h$i.txt");
      List<String> lines = hadeth.trim().split("\n");
      String hadeithTitle = lines.first;
      String hadeithContent = lines.skip(1).join("\n");

      HadeithDataModel data = HadeithDataModel(
        hadeithTitle: hadeithTitle,
        hadeithContent: hadeithContent,
      );
      hadetkData.add(data);
    }
    setState(() {});
  }
}

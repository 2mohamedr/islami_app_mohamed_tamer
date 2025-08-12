import 'package:flutter/material.dart';
import 'package:islami/modules/hades/hadeth_view.dart';
import 'package:islami/modules/quran/quran_view.dart';
import 'package:islami/modules/radio/radio_view.dart';
import 'package:islami/modules/tasbeh/tasbeh_view.dart';
import 'package:islami/modules/time/time_view.dart';

import '../../core/constants/assets/images.dart';

class LayouteView extends StatefulWidget {
  static const String routeName = "/layoute";

  const LayouteView({super.key});

  @override
  State<LayouteView> createState() => _LayouteViewState();
}

class _LayouteViewState extends State<LayouteView> {
  int SelectedIndex = 0;
  List<Widget> screen = [
    QuranView(),
    TimeView(),
    HadethView(),
    TasbehView(),
    RadioView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,
        onTap: (int index) {
          setState(() {
            SelectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            label: "Quran",
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            label: "Hades",
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            label: "Tasbeh",
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            label: "Radio",
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            label: "Time",
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage(Assets.quranWhiteIcons)),
            ),
          ),
        ],
      ),
      body: screen[SelectedIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/core/constants/theme_manager.dart';
import 'package:islami/modules/layoute/layoute_view.dart';
import 'package:islami/modules/splach/splach_veiw.dart';

import 'modules/quran/quran_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.themeData,
      initialRoute: SplachVeiw.routeName,
      routes: {
        SplachVeiw.routeName: (context) => const SplachVeiw(),
        LayouteView.routeName: (context) => const LayouteView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}

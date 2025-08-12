import 'package:flutter/material.dart';

import '../../core/constants/assets/images.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key});

  @override
  State<TimeView> createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.timeBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

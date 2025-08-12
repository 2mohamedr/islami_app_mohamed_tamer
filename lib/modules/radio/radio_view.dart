import 'package:flutter/material.dart';

import '../../core/constants/assets/images.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.radioBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

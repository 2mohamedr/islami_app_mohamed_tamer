import 'package:flutter/material.dart';

import '../../core/constants/assets/images.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.tasbehBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

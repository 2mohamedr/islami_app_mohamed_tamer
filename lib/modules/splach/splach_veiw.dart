import 'package:flutter/material.dart';

import '../../core/constants/assets/images.dart';
import '../layoute/layoute_view.dart';

class SplachVeiw extends StatefulWidget {
  static const String routeName = "/splach";

  const SplachVeiw({super.key});

  @override
  State<SplachVeiw> createState() => _SplachVeiwState();
}

class _SplachVeiwState extends State<SplachVeiw> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayouteView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.splach),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

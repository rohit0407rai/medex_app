import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiseaseCard extends StatelessWidget {
  final String text;
  final String asset;

  const DiseaseCard({super.key, required this.text, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Container(
              height: 60,
              child: Image.asset(asset)),
          const SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}

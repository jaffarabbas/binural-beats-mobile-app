import 'package:binural_app/components/mainSoundSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SoundSectionList extends StatelessWidget {
  const SoundSectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SoundSLiderMain(sliderName: 'New Sounds'),
              SoundSLiderMain(sliderName: 'Popular Sounds'),
            ],
          ),
        ),
      ),
    );
  }
}

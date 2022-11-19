import 'package:binural_app/pages/library_screen/widgets/categoriesSlider.dart';
import 'package:binural_app/pages/library_screen/widgets/searchSounds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LibraryHeader extends StatelessWidget {
  const LibraryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchSounds(),
          CategoriesSlider(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/view/widgets/section_container.dart';

class PhotoSection extends StatelessWidget {
  const PhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Calculate dimensions based on screen size
    final double imageSize = size.width < 600
        ? size.width * 0.8
        : 400; // 80% of width for small screens, fixed size for larger

    return Expanded(
      child: SectionContainer(
        child: Center(
          child: Container(
            width: imageSize,
            height: imageSize,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/me.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

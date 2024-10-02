import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/text_theme.dart';


class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.size,
    required this.onPressed,
  });

  final String text;
  final Size size; // Expecting the size to be provided.
  final VoidCallback onPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> myAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    myAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => _hover(true),
        onExit: (_) => _hover(false),
        child: ScaleTransition(
          scale: myAnimation,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ElevatedButton(
              onPressed: widget.onPressed, // Use widget.onPressed here
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    secondaryColor, // Use secondaryColor from your theme
                minimumSize: widget.size * 0.5, // Adjust size as needed
                elevation: 1,
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                widget.text,
                style: AppTextTheme.bodyMedium(), // Custom text style
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _hover(bool isHovered) {
    if (isHovered) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }
}

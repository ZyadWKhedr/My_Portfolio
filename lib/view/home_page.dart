import 'package:flutter/material.dart';
import 'package:my_portfolio/features/view/desktop/desktop_layout.dart';
import 'package:my_portfolio/features/view/mobile/mobile_layout.dart';
import 'package:my_portfolio/features/view/tablet/tablet_layout.dart';
import 'package:my_portfolio/features/view_model/scroll_controller_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the ScrollController from the provider
    final scrollController = Provider.of<ScrollControllerProvider>(context).scrollController;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return MobileLayout(scrollController: scrollController); // Pass the scroll controller
        } else if (constraints.maxWidth < 1200) {
          // Tablet layout
          return TabletLayout(scrollController: scrollController); // Pass the scroll controller
        } else {
          // Desktop layout
          return DesktopLayout(scrollController: scrollController); // Pass the scroll controller
        }
      },
    );
  }
}

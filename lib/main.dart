import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/features/view/home_page.dart';
import 'package:my_portfolio/features/view_model/scroll_controller_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ScrollControllerProvider(),
      child: const Portfolio(),
    ),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
      ),
    );
  }
}

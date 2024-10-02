import 'package:flutter/material.dart';

class ScrollControllerProvider with ChangeNotifier {
  late ScrollController _scrollController;

  ScrollControllerProvider() {
    _scrollController = ScrollController();
  }

  ScrollController get scrollController => _scrollController;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

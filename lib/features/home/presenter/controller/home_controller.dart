import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  ValueNotifier<int> currentPage = ValueNotifier<int>(0);
  final pageViewController = PageController();

  void setPage(int index) {
    currentPage.value = index;
    pageViewController.jumpToPage(index);
    notifyListeners();
  }
}

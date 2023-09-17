import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  ValueNotifier<int> currentPage = ValueNotifier<int>(0);
  int pageActive = 0;
  final pageViewController = PageController();

  void setPage(int index) {
    currentPage.value = index;
    pageActive = index;
    pageViewController.jumpToPage(index);
    notifyListeners();
  }
}

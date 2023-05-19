import 'package:flutter/material.dart';

enum CurrentPage { Home, About, Resume, Projects, Contact }

class PageState extends ChangeNotifier {
  CurrentPage _currentPage = CurrentPage.Home;

  CurrentPage get currentPage => _currentPage;

  void setCurrentPage(CurrentPage page) {
    if (_currentPage != page) {
      _currentPage = page;
      notifyListeners();
    }
  }
}

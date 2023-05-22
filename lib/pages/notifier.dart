import 'package:flutter/material.dart';

enum CurrentPage { Home, About, Resume, Projects, Contact }

class Notifier extends ChangeNotifier {
  String _selectedLanguage = 'eng';

  String get selectedLanguage => _selectedLanguage;
  CurrentPage _currentPage = CurrentPage.Home;

  CurrentPage get currentPage => _currentPage;

  void setCurrentPage(CurrentPage page) {
    if (_currentPage != page) {
      _currentPage = page;
      notifyListeners();
    }
  }

  void setSelectedLanguage(String language) {
    _selectedLanguage = language;
    notifyListeners();
  }
}

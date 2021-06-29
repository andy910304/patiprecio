import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedBottomAppbarOpt = 0;
  int _tabIndex = 0;

  int get selectedBottomAppbarOpt {
    return this._selectedBottomAppbarOpt;
  }

  set selectedBottomAppbarOpt(int val) {
    this._selectedBottomAppbarOpt = val;
    notifyListeners();
  }

  int get selectedTabIndex {
    return this._tabIndex;
  }

  set selectedTabIndex(int val) {
    this._tabIndex = val;
    notifyListeners();
  }
}

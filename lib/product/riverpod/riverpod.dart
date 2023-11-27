import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:game_app/product/model/games_model.dart';
import 'package:game_app/product/service/service.dart';

class GamesViewController extends ChangeNotifier {
  TextEditingController searhBarContoller = TextEditingController();

  bool? isLoad;
  List<GamesModel> allGameList = [];
  void getData() {
    Service().fetchGames().then((value) {
      if (value != null) {
        allGameList = value;
        isLoad = true;
        notifyListeners();
      } else {
        isLoad = false;
        notifyListeners();
      }
    });
  }

  void searhItems(String value) {
    final searchList = allGameList.where((element) {
      final gameName = element.title!.toLowerCase();
      return gameName.contains(value);
    }).toList();
    allGameList = searchList;
    notifyListeners();
  }
}

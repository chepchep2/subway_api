import 'package:flutter/material.dart';

import '../../data/model/subway_item.dart';
import '../../data/repository/subway_repository_impl.dart';

class MainViewModel extends ChangeNotifier{
  final repository = SubwayRepositoryImple();

  List<SubwayItem> subwayItems = [];

  Future<void> getSubwayNames(String name) async {
    subwayItems = await repository.getSubwayItem(name);
    notifyListeners();
  }

}

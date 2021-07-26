import 'package:floor_ex/presentation/base/base_viewmodel.dart';
import 'package:floor_ex/resource/local/database_provider/db_provider.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends BaseViewModel {
  initData() {
    deleteTableAb();
    addUser();
    disPlayData();
    notifyListeners();
  }

  @override
  final BuildContext context;
  HomeViewModel({
    required this.context,
  });

  deleteTableAb() {
    return DBProvider.delete();
  }

  addUser() async {
    return await DBProvider.addUsers();
  }

  disPlayData() {
    // list.add(DBProvider.retrieveUsers()
    // )
    return DBProvider.retrieveUsers();
  }
}

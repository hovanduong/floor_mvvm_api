import 'dart:convert';
import 'package:floor_ex/resource/local/database/database.dart';
import 'package:floor_ex/resource/local/entity/a.dart';
import 'package:floor_ex/resource/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DBProvider with ChangeNotifier {
  DBProvider._();
  // static final DBProvider db = DBProvider._();
  // static database() async {
  //   return await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  // }

  // static dao() async {
  //   return database().adao;
  // }

  static Future<Ab?> delete() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    final personDao = database.adao;
    return await personDao.deleteAb();
  }

  static Future<List<int>> addUsers() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    final personDao = database.adao;
    final data =
        await rootBundle.loadString('assets/data/my_product_json.json');
    final list = json.decode(data) as List<dynamic>;
    List<Ab> listAb = [];
    for (var ab in list) {
      Product product = Product.fromJson(ab);
      Ab ab1 = Ab(product.id, product.name, product.category, product.imageUrl);
      listAb.add(ab1);
    }
    return await personDao.inserAbb(listAb);
  }

  static Future<List<Ab>> retrieveUsers() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    final personDao = database.adao;

    return await personDao.retrieveUsers();
  }
}

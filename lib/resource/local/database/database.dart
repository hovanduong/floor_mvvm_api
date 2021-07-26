import 'package:floor/floor.dart';
import 'package:floor_ex/resource/local/dao/fasfs.dart';
import 'package:floor_ex/resource/local/entity/a.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'database.g.dart';

@Database(version: 1, entities: [Ab])
abstract class AppDatabase extends FloorDatabase {
  Adao get adao;
}

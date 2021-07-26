import 'package:floor/floor.dart';
import 'package:floor_ex/resource/local/entity/a.dart';

@dao
abstract class Adao {
  @insert
  Future<List<int>> inserAbb(List<Ab> ab);

  @Query('DELETE FROM Ab')
  Future<Ab?> deleteAb();

  @Query('SELECT * FROM Ab')
  Future<List<Ab>> retrieveUsers();

  @insert
  Future<void> inserUser(Ab ab);
}

import 'package:floor/floor.dart';
import 'package:run_tracker/dbhelper/datamodel/RunningData.dart';

@dao
abstract class RunningDao {
  @Query('SELECT * FROM RunningData WHERE id = :id')
  Future<RunningData?> findTaskById(int id);

  @Query('SELECT * FROM RunningData')
  Future<List<RunningData>> getAllHistory();

  @Query('SELECT * FROM RunningData')
  Stream<List<RunningData>> findAllTasksAsStream();

  @Query('SELECT * FROM RunningData ORDER BY id DESC LIMIT 3')
  Future<List<RunningData>> findRecentTasksAsStream();

  @Query('SELECT *,IFNULL(MAX(distance),0) FROM RunningData')
  Future<RunningData?> findLongestDistance();

  @Query('SELECT IFNULL(SUM(distance),0.0) as total FROM RunningData')
  Future<RunningData?> findSumOfDistance();

  @Query('SELECT *,IFNULL(MAX(speed),0) FROM RunningData')
  Future<RunningData?> findBestPace();

  @Query('SELECT *,IFNULL(MAX(duration),0) FROM RunningData')
  Future<RunningData?> findMaxDuration();

  @Query('SELECT IFNULL(SUM(cal),0.0) as total FROM RunningData')
  Future<RunningData?> findSumOfCalories();

  @Query('SELECT IFNULL(AVG(speed),0.0) as total FROM RunningData')
  Future<RunningData?> findAverageOfSpeed();

  @Query('SELECT IFNULL(SUM(duration),0) as duration FROM RunningData')
  Future<RunningData?> findSumOfDuration();

  @Query('SELECT IFNULL(SUM(highIntenseTime),0) as highIntenseTime FROM RunningData WHERE date IN(:date)')
  Future<RunningData?> getTotalOfHighIntensity(List<String> date);

  @Query('SELECT IFNULL(SUM(lowIntenseTime),0) as lowIntenseTime FROM RunningData WHERE date IN(:date)')
  Future<RunningData?> getTotalOfLowIntensity(List<String> date);

  @Query('SELECT IFNULL(SUM(moderateIntenseTime),0) as moderateIntenseTime FROM RunningData WHERE date IN(:date)')
  Future<RunningData?> getTotalOfModerateIntensity(List<String> date);


  @insert
  Future<int> insertTask(RunningData task);

  @insert
  Future<void> insertTasks(List<RunningData> tasks);

  @update
  Future<void> updateTask(RunningData task);

  @update
  Future<void> updateTasks(List<RunningData> task);

  @delete
  Future<void> deleteTask(RunningData task);

  @delete
  Future<void> deleteTasks(List<RunningData> tasks);
}
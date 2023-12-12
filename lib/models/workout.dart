import 'package:tryingolok/models/exercise.dart';

class Workout {
  int id;
  String name;
  List<Exercise> exercise;

  Workout({
    required this.id,
    required this.name,
    required this.exercise,
  });
}

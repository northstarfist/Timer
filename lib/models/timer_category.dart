import 'package:timer/models/timer.dart';

class TimerCategory {
  String id;
  String name;
  List<Timer> timers;

  TimerCategory({
    required this.id,
    required this.name,
    required this.timers,
  });
}

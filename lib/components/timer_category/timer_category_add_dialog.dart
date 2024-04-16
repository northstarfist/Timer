import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timer/models/timer_category.dart';
import 'package:uuid/uuid.dart';

class TimerCategoryAddDialog extends StatefulWidget {
  const TimerCategoryAddDialog({super.key});

  @override
  State<TimerCategoryAddDialog> createState() => _TimerCategoryAddDialogState();
}

class _TimerCategoryAddDialogState extends State<TimerCategoryAddDialog> {
  final _controller = TextEditingController();
  final _box = Hive.box('timer');

  void addTimerCategory(String name) {
    TimerCategory newTimer = TimerCategory(
      id: const Uuid().v4(),
      name: name,
      timers: [],
    );
    _box.put(newTimer.id, newTimer.timers);
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.grey[800],
      contentPadding: const EdgeInsets.all(20),
      children: [
        TextField(
          controller: _controller,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Add a new timer',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {
            addTimerCategory(_controller.text);
          },
          child: const Text('Create'),
        ),
      ],
    );
    ;
  }
}

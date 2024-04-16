import 'package:flutter/material.dart';

class TimerAddDialog extends StatelessWidget {
  const TimerAddDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.grey[800],
      contentPadding: const EdgeInsets.all(20),
      children: [
        const TextField(
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter time',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        const TextField(
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter timer name',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
          child: const Text('Create'),
        ),
      ],
    );
    ;
  }
}

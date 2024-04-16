import 'package:flutter/material.dart';
import 'package:timer/components/timer/timer_dialog.dart';
import 'package:timer/components/timer_category/timer_category_dialog.dart';

class TimerTile extends StatelessWidget {
  const TimerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        title: const Text('5 : 00'),
        subtitle: const Text('Super Set Rest'),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const TimerDialog(),
            );
          },
        ),
        iconColor: Colors.white,
        textColor: Colors.white,
      ),
    );
  }
}

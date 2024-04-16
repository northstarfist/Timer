import 'package:flutter/material.dart';

class TimerDialog extends StatelessWidget {
  const TimerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.grey[800],
      contentPadding: const EdgeInsets.all(20),
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
          child: const Text('Edit time'),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
          child: const Text('Edit name'),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
          child: const Text('Edit color'),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          onPressed: () {},
          child: const Text('Delete'),
        ),
      ],
    );
  }
}

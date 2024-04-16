import 'package:flutter/material.dart';
import 'package:timer/components/timer_category/timer_category_add_dialog.dart';
import 'package:timer/components/timer_category/timer_category_tile.dart';
import 'package:timer/screens/timer_screen.dart';

class TimerCategoryScreen extends StatefulWidget {
  const TimerCategoryScreen({super.key});

  @override
  State<TimerCategoryScreen> createState() => _TimerCategoryScreenState();
}

class _TimerCategoryScreenState extends State<TimerCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Timer+',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const TimerCategoryAddDialog(),
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.orange,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TimerScreen(),
                    ),
                  ),
                  child: const TimerCategoryTile(),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:timer/components/timer/timer_add_dialog.dart';
import 'package:timer/components/timer/timer_tile.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Timer+',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.orange,
            ),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const TimerAddDialog(),
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
              itemCount: 2,
              itemBuilder: ((context, index) {
                return const TimerTile();
              }),
            ),
          ),
        ],
      ),
    );
  }
}

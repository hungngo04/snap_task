import 'package:flutter/material.dart';
import 'package:snap_task/ui/widgets/button.dart';
import 'package:snap_task/ui/size_config.dart';
import 'package:snap_task/ui/theme_config.dart';
import 'package:snap_task/ui/widgets/input_field.dart';
import 'package:snap_task/ui/widgets/task_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonComponent(
            label: '+ Add Task', 
            onTap: () {
              print('test');
            },
          ),
          const InputField(
            title: "To-do", 
            hint: "Enter your to-do here.",
          ),
          TaskTile()
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:snap_task/ui/pages/demo_core_ui.dart';
import 'package:snap_task/ui/pages/home_page.dart';
import 'package:snap_task/ui/size_config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoCoreUI(),
    );
  }
}

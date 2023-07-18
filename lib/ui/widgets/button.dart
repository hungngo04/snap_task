import 'package:flutter/material.dart';
import 'package:snap_task/ui/size_config.dart';
import 'package:snap_task/ui/theme_config.dart';

class ButtonComponent extends StatelessWidget {
  final Function? onTap;
  final String? label;

  ButtonComponent({
    this.onTap,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,

      child: Container(
        height: 50,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(14),
          border: null,
        ),
        child: Center(
          child: Text(
            label!,
            style: const TextStyle(color: Colors.white).copyWith(fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_management/ui/size_config.dart';
import 'package:task_management/ui/theme.dart';

class MyButton extends StatelessWidget {
  final Function? onTap;
  final String? label;
  final double? widthSize;
  final bool? isBackground;

  MyButton({
    this.onTap,
    this.label,
    this.widthSize,
    this.isBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 50,
        width: widthSize ?? 130,
        decoration: BoxDecoration(
          color: isBackground! ? primaryClr : null,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: primaryClr)
        ),
        child: Center(
          child: Text(
            label!,
            style: TextStyle(color: isBackground! ? Colors.white : primaryClr),
          ),
        ),
      ),
    );
  }
}

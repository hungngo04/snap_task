import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snap_task/ui/size_config.dart';
import 'package:snap_task/ui/theme_config.dart';

class TaskTile extends StatelessWidget {
  // final Task task;
  // TaskTile(this.task);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(12)),
      child: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        //  width: SizeConfig.screenWidth * 0.78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _getBGClr(0),
        ),
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    // task.title!,
                    'Todo 1',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    // task.note!,
                    'This is the task note demo',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(fontSize: 12, color: Colors.grey[100]),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 0.5,
                  color: Colors.grey[200]!.withOpacity(0.7),
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.grey[200],
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        // "${task.startTime} - ${task.endTime}",
                        "10:00 - 12:00",
                        style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 12, color: Colors.grey[100], fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 10),
          //   height: 60,
          //   width: 0.5,
          //   color: Colors.grey[200]!.withOpacity(0.7),
          // ),
          // RotatedBox(
          //   quarterTurns: 3,
          //   child: Text(
          //     // task.isCompleted == 1 ? "COMPLETED" : "TODO",
          //     "COMPLETED",
          //     style: GoogleFonts.lato(
          //       textStyle: const TextStyle(
          //           fontSize: 10,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white),
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }

  _getBGClr(int? no) {
    switch (no) {
      case 0:
        return bluishClr;
      case 1:
        return pinkClr;
      case 2:
        return yellowClr;
      default:
        return bluishClr;
    }
  }
}

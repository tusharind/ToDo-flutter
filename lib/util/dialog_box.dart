import 'package:flutter/material.dart';
import 'package:moreflutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[100],
      content: Container(
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                  color: Colors.yellow, // Pass yellow color
                ),
                const SizedBox(width: 15), // Gap between buttons
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                  color: Colors.yellow, // Pass yellow color
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:todo_app/Buttons/user_buttons.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  
   DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            //get user input
            TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new Task',
                ),
                ),
            const SizedBox(height: 12),

            // buttons -> Save & Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Save Button
                UserButtons(text: 'Save', onPressed: onSave),
                //Cancel Button
                UserButtons(text: 'Cancel', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

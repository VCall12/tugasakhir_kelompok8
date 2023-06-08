import 'package:flutter/material.dart';
import 'package:tugasakhir_kelompok8/my_button.dart';

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
      backgroundColor: Colors.amberAccent[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Tugas Baru",
              ),
            ),

            //tombol save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //tombol save
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 10),

                //tombol cancel
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

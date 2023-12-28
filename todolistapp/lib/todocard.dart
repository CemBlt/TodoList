import 'package:flutter/material.dart';

class todocard extends StatefulWidget {
  const todocard({super.key, required this.title});
  final String title;

  @override
  State<todocard> createState() => _todocardState();
}

class _todocardState extends State<todocard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.notes_outlined,
              size: 50,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Checkbox(
                value: isChecked,
                onChanged: (val) => {
                      setState(() {
                        isChecked = val!;
                      })
                    })
          ],
        ),
      ),
    );
  }
}

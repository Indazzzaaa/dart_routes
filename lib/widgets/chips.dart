import 'package:flutter/material.dart';

class CustomChips extends StatelessWidget {
  final String title;

  const CustomChips({this.title});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black54, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(8),
      onSelected: (value) {
        print(value);
      },
      backgroundColor: Colors.teal.shade600,
      label: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      elevation: 5,
      selected: false,
    );
  }
}

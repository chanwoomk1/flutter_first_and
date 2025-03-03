import 'package:flutter/material.dart';

class Todocard extends StatelessWidget {
  final String todoName;
  final bool isdone;
  final VoidCallback? pushedButton;
  const Todocard({super.key,required this.todoName,required this.isdone, this.pushedButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(todoName),
        ElevatedButton(
          onPressed: pushedButton, // 올바르게 콜백 전달
          child: Icon(Icons.done),
        ),
      ]
    );
  }
}
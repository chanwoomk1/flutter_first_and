import 'package:flutter/material.dart';
import "package:myapp/layout/navigationbar/customBarShape.dart";
import "package:myapp/modal/modalbutton.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class Todo{
  String todoName;
  bool isdone;
  Todo({required this.todoName, this.isdone=false});
}

class _MainScreenState extends State<MainScreen> {
  final List<Todo> _todolist=[];
  final TextEditingController _controller = TextEditingController();

  void _changedTextfiled(String value){
    setState(() {
      
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // 메모리 누수 방지
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller:_controller,
          onChanged: _changedTextfiled,
        ),
        Text(_controller.text),
        ModalButton(ModalScreen: Text("modalScreen"))
      ],
    );
  }
}

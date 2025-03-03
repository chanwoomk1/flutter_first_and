import 'package:flutter/material.dart';
import "package:myapp/layout/navigationbar/customBarShape.dart";
import "package:myapp/modal/modalbutton.dart";
import "package:myapp/todocard.dart";

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
  void _addtodolist(Todo _todoelement){
    setState((){
      _todolist.add(_todoelement);} 
    );
  }
  void _removeTodo(int index) {
    setState(() {
      _todolist.removeAt(index);
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
        Text(_controller.text),
        Column(
          children: _todolist.asMap().entries.map((entry) {
            int index = entry.key; // 리스트에서의 인덱스
            Todo item = entry.value; // 현재 요소

            return Todocard(
              todoName: item.todoName,
              isdone: item.isdone,
              pushedButton: () => _removeTodo(index), // 삭제 함수 전달
            );
          }).toList(),
        ),
        ModalButton(
          modalScreen: Column(
            children: [
              Text("---Todo---"),
              TextField(
                controller:_controller,
                onChanged:_changedTextfiled,
              ),
            ]
          ),
          closedButtonFunction: (){
            _addtodolist(Todo(todoName: _controller.text));
            _controller.clear();
            },
        )
      ],
    );
  }
}

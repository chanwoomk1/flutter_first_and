import 'package:flutter/material.dart';
import 'package:myapp/func/add_task.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MaiScreenState();
}

class _MaiScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: Text("Drawer")),
      appBar: AppBar(
        title: const Text("todo app"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SizedBox(
                  height: 250,
                  child:  AddTask(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

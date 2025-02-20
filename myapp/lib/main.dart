import 'package:flutter/material.dart';
import "package:myapp/layout/appbar.dart";
import "package:myapp/layout/navigationbar/navigationbar.dart";
import "package:myapp/screen/mainscreen.dart";
import "package:myapp/layout/navigationbar/customBarShape.dart";

//flutter run -d web-server --web-hostname=0.0.0.0

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(
        extendBody: true, // 본문 내용이 FAB 아래로 확장되도록 설정
        appBar: MyAppBar(),
        body: MainScreen(),

      )
    );
  }
}

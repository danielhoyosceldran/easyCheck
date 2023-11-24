import 'package:flutter/material.dart';
import '../colors/coustomized_colors.dart';
import '../widgets/customizedAppBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _addTaskFileDialogue() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: const CustomizedAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          Text("data"),
          Spacer(),
          Text("data"),
          Spacer(),
          Text("data"),
          Spacer(),
          Text("data"),
          Spacer(),
          Text("data"),
          Spacer(),
          Text("data"),
          Spacer(),
          Text("data"),
          Spacer(),
          Text("data"),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTaskFileDialogue,
        backgroundColor: cGreen,
        tooltip: 'Add task file.',
        child: const Icon(Icons.add),
      ),
    );
  }
}

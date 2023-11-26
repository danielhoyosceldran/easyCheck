import 'package:flutter/material.dart';
import '../colors/coustomized_colors.dart';
import '../widgets/customizedAppBar.dart';
import '../widgets/listItem.dart';
import './pageList.dart';

class PageGroups extends StatefulWidget {
  final String title;

  const PageGroups({super.key, required this.title});

  @override
  State<PageGroups> createState() => _PageGroupsState();
}

class _PageGroupsState extends State<PageGroups> {
  void _addTaskFileDialogue() {

  }

  void _navegateToList() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(
      builder: (context) => const PageList(title: "Task"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: CustomizedAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListItem(callback: _navegateToList, title: widget.title),
          const Spacer(),
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

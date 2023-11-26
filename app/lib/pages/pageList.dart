import 'package:flutter/material.dart';
import '../colors/coustomized_colors.dart';
import '../widgets/customizedAppBar.dart';
import '../widgets/listItem.dart';

class PageList extends StatefulWidget {
  final String title;
  const PageList({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  State<PageList> createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  void _addTaskFileDialogue() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: CustomizedAppBar(isTaskList: true, title: widget.title),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListItem(callback: () {}, title: widget.title),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTaskFileDialogue,
        backgroundColor: cGreen,
        tooltip: 'Add task.',
        child: const Icon(Icons.add),
      ),
    );
  }
}

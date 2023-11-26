import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './menu.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  bool? isTaskList;
  String? title;
  CustomizedAppBar({
    Key? key,
    this.isTaskList = false,
    this.title = "Easy Check"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Row(
          children: [
            if(isTaskList!) const Icon(Icons.arrow_back_ios_new),
            Text(
              title!,
              style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Menu(changeColor: true, setAsMainPage: isTaskList, settings: true)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
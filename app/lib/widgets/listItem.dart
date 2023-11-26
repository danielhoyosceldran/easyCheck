import 'package:app/pages/pageList.dart';
import 'package:flutter/material.dart';
import '../colors/coustomized_colors.dart';
import '../pages/pageList.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  const ListItem({
    Key? key,
    required this.callback,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.only(left: 20, right: 20),
        color: cBlack.withOpacity(0.04),
        height: 36,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
              title,
              style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6, top: 5),
              child: const Text("somethin"),
            ),
            Text(
              "squid",
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: const Text("somethin"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}
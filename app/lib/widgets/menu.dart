import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  bool? changeColor;
  bool? setAsMainPage;
  bool? settings;

  Menu({
    Key? key,
    this.changeColor = false,
    this.setAsMainPage = false,
    this.settings = false
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double? _getSize() {
    final num changeColorNum = widget.changeColor! ? 1 : 0;
    final num setAsMainPageNum = widget.setAsMainPage! ? 1 : 0;
    final num settingsNum= widget.settings! ? 1 : 0;
    num size = (50 * changeColorNum) + (50 * setAsMainPageNum) + (50 * settingsNum);
    return size.toDouble();
  }
  void _openMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            clipBehavior: Clip.hardEdge, // child widgets adapt to father's shape
            height: _getSize(),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(widget.changeColor!) Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Color",
                    style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                if(widget.setAsMainPage!) cSwitch(),
                if(widget.settings!) Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Settings",
                    style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _openMenu(context);
      },
      child: const Icon(Icons.menu),
    );
  }
}

class cSwitch extends StatefulWidget {
  const cSwitch({Key? key}) : super(key: key);

  @override
  State<cSwitch> createState() => _CSwitchState();
}

class _CSwitchState extends State<cSwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: [
          Text(
            "Set as main page",
            style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          const Spacer(),
          Switch(
            value: light,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // quit extra space (margin & padding)
            onChanged: (bool value) {
              setState(() {
                light = value;
              });
            },
          )
        ],
      ),
    );
  }
}

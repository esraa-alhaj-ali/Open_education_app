 import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
 
 
class ShowAll extends StatefulWidget {
  List<Widget> children;
  ShowAll({required this.children});

  @override
  State<ShowAll> createState() => _ShowAllState();
}

class _ShowAllState extends State<ShowAll> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (expanded)
          for (Widget widget in widget.children) widget,
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: InkWell(
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: Text(
                expanded ? "Show_less".tr(context) : "View_all".tr(context),
                style: expanded
                    ? TextStyle(color: Colors.blue)
                    : TextStyle(color: Colors.black),
              )),
        )
      ],
    );
  }
}

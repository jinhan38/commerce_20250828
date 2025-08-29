import 'package:flutter/material.dart';

class HomeWidgets {

  static Widget shortcut({required List<String> iconList}) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(iconList.length, (index) {
        return ElevatedButton(
          onPressed: () {},
          child: Image.asset(iconList[index], fit: BoxFit.cover),
        );
      }),
    );
  }
}

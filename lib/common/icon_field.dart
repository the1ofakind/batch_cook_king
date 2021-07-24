import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconField extends StatelessWidget {
  const IconField(
      {Key? key,
      required this.label,
      required this.iconName,
      this.iconColor = Colors.black,
      this.keyboardType = TextInputType.text})
      : super(key: key);
  final String label;
  final IconData iconName;
  final Color iconColor;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flexible(
          flex: 4,
          child: Column(children: <Widget>[
            Flexible(
                child: TextField(
              decoration: InputDecoration(
                  labelText: label,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  icon: Icon(
                    iconName,
                    color: iconColor,
                  )),
              keyboardType: keyboardType,
            )),
            const Flexible(
                child: Divider(
              height: 500,
              thickness: 2,
              color: Colors.blueGrey,
            ))
          ]))
    ]);
  }
}

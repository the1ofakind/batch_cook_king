import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  const MenuRow(
      {Key? key,
      required this.colorRow,
      required this.iconName,
      this.iconColor = Colors.black,
      required this.textLabel})
      : super(key: key);
  final Color colorRow;
  final IconData iconName;
  final Color iconColor;
  final String textLabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorRow,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Icon(
              iconName,
              color: iconColor,
              size: 60,
            ),
          ),
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Text(textLabel,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(33, 122, 198, 100),
                      fontSize: 20))),
        ],
      ),
    );
  }
}

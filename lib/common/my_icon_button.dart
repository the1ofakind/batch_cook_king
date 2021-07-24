import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton(
      {Key? key,
      required this.icon,
      this.color = Colors.blue,
      required this.onPressed()})
      : super(key: key);
  final IconData icon;
  final Color color;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(icon), color: color, iconSize: 30, onPressed: onPressed);
  }
}

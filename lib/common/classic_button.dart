import 'package:flutter/material.dart';

class ClassicActionButton extends StatelessWidget {
  const ClassicActionButton(
      {Key? key, required this.label, required this.onPressed})
      : super(key: key);
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(
          fit: FlexFit.tight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            onPressed: onPressed,
            child: Text(label),
          ))
    ]);
  }
}


// children: [
//   Flexible(
//     fit: FlexFit.tight,
//     child: ClassicActionButton(
//     label: 'Connexion',
//     onPressed: () {
//       Navigator.push<MaterialPageRoute<dynamic>>(context,
//       MaterialPageRoute(builder: (context) {
//         return const Dashboard();
//       }));
//     },
//   ))
// ],
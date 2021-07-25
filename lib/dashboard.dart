import 'package:batch_cook_king/common/menu_row.dart';
import 'package:batch_cook_king/presentation/flutter_icon_icons.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  _MyDashboard createState() => _MyDashboard();
}

class _MyDashboard extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: const <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                iconName: FlutterIcon.calendar_1,
                colorRow: Color.fromRGBO(254, 228, 228, 100),
                textLabel: 'Mon planning',
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                iconName: FlutterIcon.qr_code__1_,
                colorRow: Color.fromRGBO(249, 173, 173, 100),
                textLabel: 'Mon Code Qr',
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                iconName: FlutterIcon.plat,
                colorRow: Color.fromRGBO(252, 149, 149, 100),
                textLabel: 'Ma cuisine',
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                iconName: FlutterIcon.parametres,
                colorRow: Color.fromRGBO(255, 99, 99, 100),
                textLabel: 'Gestion de Compte',
              ),
            ),
          ],
        ));
  }
}

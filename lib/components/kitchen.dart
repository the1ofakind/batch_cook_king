import 'package:batch_cook_king/common/menu_row.dart';
import 'package:batch_cook_king/components/recipe_with_list_view.dart';
import 'package:batch_cook_king/presentation/flutter_icon_icons.dart';
import 'package:flutter/material.dart';

class Kitchen extends StatelessWidget {
  const Kitchen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyKitchen(),
    );
  }
}

class MyKitchen extends StatefulWidget {
  const MyKitchen({Key? key}) : super(key: key);

  @override
  _MyKitchen createState() => _MyKitchen();
}

class _MyKitchen extends State<MyKitchen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(child: Text('Ma Cuisine')),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                  iconName: FlutterIcon.qr_code__1_,
                  colorRow: const Color.fromRGBO(228, 243, 255, 100),
                  textLabel: 'Ajouter un membre',
                  onPressed: () {}),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                  iconName: FlutterIcon.livre_de_recettes,
                  colorRow: const Color.fromRGBO(173, 216, 249, 100),
                  textLabel: 'Mes plats',
                  onPressed: () {
                    Navigator.push<MaterialPageRoute<dynamic>>(context,
                        MaterialPageRoute(builder: (context) {
                      return const RecipeWithListview();
                    }));
                  }),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                  iconName: FlutterIcon.chef,
                  colorRow: const Color.fromRGBO(149, 206, 252, 100),
                  textLabel: 'Batch cooker ma semaine',
                  onPressed: () {}),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: MenuRow(
                  iconName: FlutterIcon.liste_de_courses,
                  colorRow: const Color.fromRGBO(98, 184, 254, 100),
                  textLabel: 'Liste de course',
                  onPressed: () {}),
            ),
          ],
        ));
  }
}

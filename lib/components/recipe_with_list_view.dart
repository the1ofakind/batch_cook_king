import 'dart:math';

import 'package:batch_cook_king/common/classic_button.dart';
import 'package:batch_cook_king/components/dashboard.dart';
import 'package:batch_cook_king/components/recipe_detail.dart';
import 'package:batch_cook_king/model/recipe_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RecipeWithListview extends StatefulWidget {
  const RecipeWithListview({Key? key}) : super(key: key);

  @override
  _RecipeWithListviewState createState() => _RecipeWithListviewState();
}

class _RecipeWithListviewState extends State<RecipeWithListview> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Erreur dans le chargement');
              } else if (snapshot.hasData) {
                return const MyRecipeWithListview();
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}

class MyRecipeWithListview extends StatefulWidget {
  const MyRecipeWithListview({Key? key}) : super(key: key);
  @override
  _MyRecipeWithListviewState createState() => _MyRecipeWithListviewState();
}

class _MyRecipeWithListviewState extends State<MyRecipeWithListview> {
  final DatabaseReference _dataBaseRef = FirebaseDatabase(
          databaseURL:
              'https://batch-cook-king-default-rtdb.europe-west1.firebasedatabase.app')
      .reference()
      .child('plat');

  // _testRef.get();
  // ignore: cascade_invocations
  // _dataBaseRef.child('plat1').set('plat1')';
  // _testRef.push().set({'description': 'test', 'image': 'teds'});

  // _testRef.reference().child('test').get().then((DataSnapshot? snapshot) {
  //   print(
  //       'Connected to directly configured database and read ${snapshot!.value}');
  // });

  @override
  Widget build(BuildContext context) {
    // _dataBaseRef.push().set({
    //   'image': 'plat3',
    //   'nom': 'Boulette de viande au fromage Kiri',
    //   'infos': [
    //     {'data': '18h', 'unite': 'vu il y a'},
    //     {'data': '5', 'unite': 'minute'},
    //     {'data': '900', 'unite': 'Kcal'}
    //   ],
    //   'ingredients': [
    //     {'nom': 'Sauce Tomate', 'quantite': '200', 'unite': 'g'},
    //     {'nom': 'Lait', 'quantite': '400', 'unite': 'ml'},
    //     {'nom': 'Kiri', 'quantite': '6', 'unite': '/'},
    //   ],
    //   'commentaires': [
    //     {
    //       'texte':
    //           'Attention mettre le  four à 180°C et pas à 200°C sinon ça colle et cest relou !'
    //     },
    //     {'texte': 'Attention Pas trop en manger parce que ça fait grossir !'},
    //   ],
    // });
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(child: Text('Mes plats')),
        ),
        body: Container(
          color: const Color.fromRGBO(173, 216, 249, 100),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Flexible(
                    flex: 10,
                    child: StreamBuilder(
                        stream: _dataBaseRef.onValue,
                        builder: (context, snapshot) {
                          var nextRecipe;
                          final listViewItem = <Widget>[];
                          if (snapshot.hasData) {
                            final myRecipe = Map<String, dynamic>.from(
                                (snapshot.data! as Event).snapshot.value);
                            myRecipe.forEach((key, value) {
                              nextRecipe = Map<String, dynamic>.from(value);
                              listViewItem
                                  .add(_getRowListView(context, value, key));
                            });
                          }
                          return Scrollbar(
                            child: ListView(
                              children: listViewItem,
                            ),
                          );
                        })),
                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ClassicActionButton(
                        label: 'Ajouter un plat',
                        onPressed: () {
                          Navigator.push<MaterialPageRoute<dynamic>>(context,
                              MaterialPageRoute(builder: (context) {
                            return const Dashboard();
                          }));
                        },
                      )),
                )
              ],
            ),
          ),
        ));
  }
}

Widget _getRowListView(BuildContext context, infoRecipe, key) {
  // StreamBuilder(stream: _dataBaseRef.child('test'),)
  return Padding(
    padding: const EdgeInsets.only(bottom: 25, right: 10, left: 10),
    child: Row(
      children: <Widget>[
        Flexible(
            child: Column(
          children: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0), primary: Colors.white),
                onPressed: () {
                  Navigator.push<MaterialPageRoute<dynamic>>(context,
                      MaterialPageRoute(builder: (context) {
                    return RecipeDetails(data: infoRecipe, tag: key);
                  }));
                },
                child: Hero(
                  tag: key,
                  child: Image.asset(
                    'assets/images/${infoRecipe['image']}.jpg',
                  ),
                )),
            Container(
              color: Colors.white,
              width: 400,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(infoRecipe['nom']),
              ),
            )
          ],
        )),
      ],
    ),
  );
}

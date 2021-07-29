import 'package:batch_cook_king/common/classic_button.dart';
import 'package:batch_cook_king/components/dashboard.dart';
import 'package:batch_cook_king/components/recipe_detail.dart';
import 'package:flutter/material.dart';

class RecipeWithListview extends StatelessWidget {
  const RecipeWithListview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyRecipeWithListview(),
    );
  }
}

class MyRecipeWithListview extends StatefulWidget {
  const MyRecipeWithListview({Key? key}) : super(key: key);
  @override
  _MyRecipeWithListviewState createState() => _MyRecipeWithListviewState();
}

class _MyRecipeWithListviewState extends State<MyRecipeWithListview> {
  @override
  Widget build(BuildContext context) {
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
                Flexible(flex: 10, child: _buildListView(context)),
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

Widget _buildListView(BuildContext context) {
  return Scrollbar(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 25, right: 25, left: 25),
              child: Row(
                children: <Widget>[
                  Flexible(
                      child: Column(
                    children: <Widget>[
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              primary: Colors.white),
                          onPressed: () {
                            Navigator.push<MaterialPageRoute<dynamic>>(context,
                                MaterialPageRoute(builder: (context) {
                              return RecipeDetails(index: index);
                            }));
                          },
                          child: Hero(
                            tag: 'test$index',
                            child: Image.asset(
                              'assets/images/plat${index + 1}.jpg',
                            ),
                          )),
                      Container(
                        color: Colors.white,
                        width: 400,
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Boulette de viande au fromage Kiri'),
                        ),
                      )
                    ],
                  )),
                ],
              ),
            );
          }));
}

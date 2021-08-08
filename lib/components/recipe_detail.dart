import 'package:flutter/material.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails(
      {Key? key,
      this.backGroundcolor = const Color.fromRGBO(241, 249, 255, 100),
      this.textColor = Colors.blueGrey,
      required this.tag,
      required this.data})
      : super(key: key);
  final Color backGroundcolor;
  final Color textColor;
  final data;
  final String tag;

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(child: Text('Détails du plat')),
        ),
        body: Container(
            color: const Color.fromRGBO(173, 216, 249, 100),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: <Widget>[
                  Flexible(
                      child: Hero(
                    tag: widget.tag,
                    child: Container(
                      foregroundDecoration: BoxDecoration(
                          image: DecorationImage(
                              image: Image.asset(
                                'assets/images/${widget.data['image']}.jpg',
                              ).image,
                              fit: BoxFit.cover)),
                    ),
                  )),
                  Flexible(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                              child: Column(
                            children: <Widget>[
                              getTitle(widget.data['nom']),
                              Flexible(
                                  flex: 4,
                                  child: Row(
                                    children: getInfo(),
                                  ))
                            ],
                          )),
                          Flexible(
                              flex: 2,
                              child: Column(
                                children: <Widget>[
                                  getTitle('Ingrédients'),
                                  const Spacer(),
                                  Flexible(
                                      flex: 8,
                                      child: Row(children: <Widget>[
                                        Flexible(
                                            flex: 2,
                                            child: Stack(children: <Widget>[
                                              Scrollbar(
                                                  child: ListView(
                                                      children:
                                                          getIngredient()))
                                            ])),
                                        Flexible(
                                          child: Stack(children: <Widget>[
                                            Scrollbar(
                                              child: ListView(
                                                  children: getComments()),
                                            ),
                                          ]),
                                        )
                                      ])),
                                ],
                              ))
                        ],
                      ))
                ],
              ),
            )));
  }

  List<Widget> getInfo() {
    final getInfo = <Widget>[];
    widget.data['infos'].forEach((value) {
      getInfo.add(Flexible(
          fit: FlexFit.tight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(value['data'],
                  style: TextStyle(
                    color: widget.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              Text(value['unite'],
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 14,
                  )),
            ],
          )));
    });
    return getInfo;
  }

  Flexible getTitle(String title) {
    return Flexible(
        child: Container(
            color: widget.backGroundcolor,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                        child: Text(
                  title,
                  style: TextStyle(
                    color: widget.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ))),
              ],
            )));
  }

  List<Widget> getIngredient() {
    final getIngredient = <Widget>[];
    widget.data['ingredients'].forEach((value) {
      getIngredient.add(Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: widget.backGroundcolor,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      value['quantite'],
                      style: TextStyle(
                          color: widget.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
                Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      value['unite'],
                      style: TextStyle(
                          color: widget.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      value['nom'],
                      style: TextStyle(color: widget.textColor, fontSize: 15),
                    )),
              ],
            ),
          ),
        ),
      ));
    });
    return getIngredient;
  }

  List<Widget> getComments() {
    final getComments = <Widget>[];
    widget.data['commentaires'].forEach((value) {
      getComments.add(Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: widget.backGroundcolor,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
                child: Text(
              value['texte'],
              style: TextStyle(
                  color: widget.textColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )),
          ),
        ),
      ));
    });
    return getComments;
  }
}

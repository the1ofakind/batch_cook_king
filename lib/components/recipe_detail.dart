import 'package:flutter/material.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails(
      {Key? key,
      this.backGroundcolor = const Color.fromRGBO(241, 249, 255, 100),
      this.textColor = Colors.blueGrey,
      required this.index})
      : super(key: key);
  final Color backGroundcolor;
  final Color textColor;
  final int index;

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
            child: Column(children: <Widget>[
              Flexible(
                  child: Hero(
                tag: 'test${widget.index}',
                child: Container(
                  foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset(
                                  'assets/images/plat${widget.index + 1}.jpg')
                              .image,
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
                          getTitle(),
                          Flexible(
                              flex: 4,
                              child: Row(
                                children: <Widget>[
                                  getInfo(),
                                  getInfo(),
                                  getInfo(),
                                ],
                              ))
                        ],
                      )),
                      Flexible(
                          flex: 2,
                          child: Column(
                            children: <Widget>[
                              getTitle(),
                              const Spacer(),
                              Flexible(
                                  flex: 8,
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                          flex: 2,
                                          child: Stack(children: <Widget>[
                                            Scrollbar(
                                                child: ListView(children: [
                                              getIngredient(),
                                              getIngredient(),
                                              getIngredient(),
                                            ]))
                                          ])),
                                      Flexible(
                                        child: Stack(children: <Widget>[
                                          Scrollbar(
                                            child: ListView(
                                              children: [
                                                getComments(),
                                                getComments(),
                                                getComments(),
                                              ],
                                            ),
                                          ),
                                        ]),
                                      )
                                    ],
                                  ))
                            ],
                          ))
                    ],
                  ))
            ])));
  }

  Flexible getInfo() {
    return Flexible(
        fit: FlexFit.tight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('1400',
                style: TextStyle(
                  color: widget.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )),
            Text('Kcal',
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 14,
                )),
          ],
        ));
  }

  Flexible getTitle() {
    return Flexible(
        child: Container(
            color: widget.backGroundcolor,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                        child: Text(
                  'Ingredient',
                  style: TextStyle(
                    color: widget.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ))),
              ],
            )));
  }

  Padding getIngredient() {
    return Padding(
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
                    '200',
                    style: TextStyle(
                        color: widget.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
              Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    'g',
                    style: TextStyle(
                        color: widget.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Text(
                    'sauce tomates',
                    style: TextStyle(color: widget.textColor, fontSize: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Padding getComments() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        color: widget.backGroundcolor,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
              child: Text(
            'salutdddddddddddddddddddddddddddddddddddddddddddddddddddd',
            style: TextStyle(
                color: widget.textColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )),
        ),
      ),
    );
  }
}

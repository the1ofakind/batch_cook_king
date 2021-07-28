import 'package:flutter/material.dart';

class RecipeWithListWheelScrollView extends StatelessWidget {
  const RecipeWithListWheelScrollView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyRecipeWithListWheelScrollView(),
    );
  }
}

class MyRecipeWithListWheelScrollView extends StatefulWidget {
  const MyRecipeWithListWheelScrollView({Key? key}) : super(key: key);

  @override
  _MyRecipeWithListWheelScrollViewState createState() =>
      _MyRecipeWithListWheelScrollViewState();
}

class _MyRecipeWithListWheelScrollViewState
    extends State<MyRecipeWithListWheelScrollView> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
      ListTile(
        leading: Image.asset('assets/images/plat1.jpg'),
        title: const Text('Repas du soir'),
        subtitle: const Text('Boulette de viandeau fromage Kiri'),
      ),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text('Mes plats')),
      ),
      body: ListWheelScrollView(
        itemExtent: 75,
        children: items,
      ),
    );
  }
}

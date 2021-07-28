import 'package:batch_cook_king/common/classic_button.dart';
import 'package:batch_cook_king/common/icon_field.dart';
import 'package:batch_cook_king/common/my_icon_button.dart';
import 'package:batch_cook_king/components/dashboard.dart';
import 'package:batch_cook_king/components/test/recipe_with_list_wheel_scroll_view.dart';
import 'package:batch_cook_king/presentation/flutter_icon_icons.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(child: Text('Login')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              Flexible(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      children: const <Widget>[
                        Flexible(
                            child: IconField(
                                label: 'pseudonyme',
                                iconName: Icons.person,
                                keyboardType: TextInputType.name)),
                        Flexible(
                            child: IconField(
                                label: 'johndoe@mail.com',
                                iconName: Icons.mail,
                                keyboardType: TextInputType.emailAddress)),
                        Flexible(
                            child: IconField(
                                label: 'Mot de passe',
                                iconName: Icons.lock,
                                keyboardType: TextInputType.emailAddress)),
                      ],
                    ),
                  )),
              ClassicActionButton(
                label: 'Connexion',
                onPressed: () {
                  Navigator.push<MaterialPageRoute<dynamic>>(context,
                      MaterialPageRoute(builder: (context) {
                    return const RecipeWithListWheelScrollView();
                  }));
                },
              ),
              Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: MyIconButton(
                                icon: FlutterIcon.google, onPressed: () {})),
                        Flexible(
                            fit: FlexFit.tight,
                            child: MyIconButton(
                                icon: FlutterIcon.twitter, onPressed: () {})),
                        Flexible(
                          fit: FlexFit.tight,
                          child: MyIconButton(
                              icon: FlutterIcon.facebook, onPressed: () {}),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}

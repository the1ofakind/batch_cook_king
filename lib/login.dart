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
                      children: [
                        Flexible(
                            child: Column(
                          children: [
                            Flexible(
                                flex: 4,
                                child: Row(
                                  children: const <Widget>[
                                    Flexible(
                                        child: TextField(
                                      decoration: InputDecoration(
                                          labelText: 'Pseudo',
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          icon: Icon(
                                            Icons.person,
                                            color: Colors.black,
                                          )),
                                      keyboardType: TextInputType.name,
                                    ))
                                  ],
                                )),
                            const Flexible(
                                child: Divider(
                              height: 500,
                              thickness: 2,
                              color: Colors.blueGrey,
                            )),
                          ],
                        )),
                        Flexible(
                            child: Column(
                          children: [
                            Flexible(
                                flex: 4,
                                child: Row(
                                  children: const <Widget>[
                                    Flexible(
                                        child: TextField(
                                      decoration: InputDecoration(
                                          labelText: 'johndoe@mail.com',
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          icon: Icon(
                                            Icons.mail,
                                            color: Colors.black,
                                          )),
                                      keyboardType: TextInputType.emailAddress,
                                    ))
                                  ],
                                )),
                            const Flexible(
                                child: Divider(
                              height: 500,
                              thickness: 2,
                              color: Colors.blueGrey,
                            )),
                          ],
                        )),
                        Flexible(
                            child: Column(
                          children: [
                            Flexible(
                                flex: 4,
                                child: Row(
                                  children: const <Widget>[
                                    Flexible(
                                        child: TextField(
                                      decoration: InputDecoration(
                                          labelText: 'Mot de passe',
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          icon: Icon(
                                            Icons.lock,
                                            color: Colors.black,
                                          )),
                                      keyboardType: TextInputType.emailAddress,
                                    ))
                                  ],
                                )),
                            const Flexible(
                                child: Divider(
                              height: 500,
                              thickness: 2,
                              color: Colors.blueGrey,
                            )),
                          ],
                        )),
                      ],
                    ),
                  )),
              Flexible(
                  flex: 4,
                  child: Container(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(30)),
                    child: Icon(
                      Icons.facebook,
                      size: 50,
                    ),
                    onPressed: () {},
                  ))),
            ],
          ),
        ));
  }
}

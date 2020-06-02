import 'package:expenses2/main.dart';
import 'package:expenses2/screens/Third_screen.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Login',
          ),
        ),
        body: Container(
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: User(),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Nome do Usuário',
                  icon: Icon(Icons.people_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Senha',
                      icon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
              child: Builder(
                builder: (context) => RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExpensesApp()));
                  },
                  padding: EdgeInsets.all(16),
                  color: Colors.green,
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
              child: Builder(
                  builder: (context) => FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Information()));
                  },
                  
                  
                  child: Text('Mais Informações', style: TextStyle(color: Colors.black)),
                      )),

            )
          ]),
        ),
      ),
    );
  }
}

class Ettore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Ettore.jpeg');
    Image image = Image(
      image: assetImage,
      width: 250,
      height: 250,
    );
    return Container(child: image);
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/user.jpg');
    Image image = Image(
      image: assetImage,
      width: 200,
      height: 200,
    );
    return Container(child: image);
  }
}

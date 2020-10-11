import 'package:flutter/material.dart';

import 'cadastro.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          "Friend Pet",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/Pets.png",
              width: 300,
              height: 250,
              //fit: BoxFit.fitWidth,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Usuário:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 26)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Senha:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 26)),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
            ),
            FlatButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro()),
              );
            },
              child: Text(
                "Nãe é cadastrado? Cadastre-se!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),)
          ],
        ),
      ),
    );
  }
}

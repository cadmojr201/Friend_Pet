import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friend_pet/pets.dart';
import 'package:friend_pet/usuarios.dart';

class Relatorios extends StatefulWidget {
  @override
  _RelatoriosState createState() => _RelatoriosState();
}

class _RelatoriosState extends State<Relatorios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          "Administrador",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Relatórios de Cadastro",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              )

            ),

            Padding(
                padding: EdgeInsets.fromLTRB(30, 80, 30, 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Usuarios()),
                      );
                    },
                    child: Text(
                      "Usuários Cadastrados",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 80, 30, 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pets()),
                      );
                    },
                    child: Text(
                      "Pets Cadastrados",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

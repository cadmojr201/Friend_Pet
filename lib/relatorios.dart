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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Relatórios de Cadastro",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              )

            ),

            Padding(
                padding: EdgeInsets.fromLTRB(10, 120, 10, 10),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                        fontSize: 22,
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                        fontSize: 22,
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

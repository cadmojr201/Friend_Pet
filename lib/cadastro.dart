import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          "Cadastro",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 180, color: Colors.green,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 26)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Fone/Zap:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 26)),
            ),
            TextField(
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
                padding: EdgeInsets.fromLTRB(30, 16, 30, 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Voltar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

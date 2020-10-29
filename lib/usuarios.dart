import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Usuarios extends StatefulWidget {
  @override
  _UsuariosState createState() => _UsuariosState();
}

class _UsuariosState extends State<Usuarios> {

  File _image;
  final List<String> entries = <String>['1', '2', '3', '4', '5', '6'];
  final List<int> colorCodes = <int>[500, 100, 500, 100, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          "Usuários Cadastrados",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: EdgeInsets.all(4),
              height: 124,
              color: Colors.amber[colorCodes[index]],
              child: Row(
                children: [
                  Center(
                      child: _image == null
                          ? Icon(Icons.account_circle,size: 120,color: Colors.green,)
                          : CircleAvatar(
                        backgroundImage: FileImage(_image),
                        radius: 70,
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Nome: Usuário ${entries[index]}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Center(
                            child: Text(
                          'Fone/Zap: Usuário ${entries[index]}',
                          style: TextStyle(fontSize: 16),
                        )),
                        Center(
                            child: Text(
                          'Usuário: Usuário ${entries[index]}',
                          style: TextStyle(fontSize: 16),
                        )),
                        Center(
                            child: Text(
                          'Senha: Usuário ${entries[index]}',
                          style: TextStyle(fontSize: 16),
                        )),
                      ],
                    ),
                  )
                ],
              ));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

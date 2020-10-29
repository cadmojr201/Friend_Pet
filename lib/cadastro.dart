import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  File _image;
  final picker = ImagePicker();

  Future ImagemCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future ImagemGaleria() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

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
        padding: EdgeInsets.fromLTRB(12, 6, 12, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: _image == null
                    ? Icon(Icons.account_circle,size: 150,color: Colors.green,)
                    : CircleAvatar(
                  backgroundImage: FileImage(_image),
                  radius: 70,
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  iconSize: 38,
                  color: Colors.green,
                  onPressed: ImagemCamera,
                  tooltip: 'Pick Image',

                ),
                SizedBox(width: 50),
                IconButton(
                  icon: Icon(Icons.image, color: Colors.green,),
                  iconSize: 38,
                  onPressed: ImagemGaleria,
                  tooltip: 'Pick Image',
                ),
              ],
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Fone/Zap:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Usuário:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Senha:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 16, 30, 10),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                child: Container(
                  height: 45,
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
                        fontSize: 22,
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

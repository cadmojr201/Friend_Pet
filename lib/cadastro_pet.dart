import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CadastroPet extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<CadastroPet> {
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
          "Cadastro Pet",
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
            SizedBox(height: 10),
            Center(
                child: _image == null
                    ? Image.asset("images/Pets.png", width: 300, height: 150,)
                    : Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(_image),
                        fit: BoxFit.cover,
                      )),
                ),
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
            /*Image.asset("images/Pets.png", width: 300,
              height: 150,),*/

            TextField(
              decoration: InputDecoration(
                  labelText: "Nome:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Raça:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Porte:",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
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
                padding: EdgeInsets.fromLTRB(30, 8, 30, 10),
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pets extends StatefulWidget {
  @override
  _PetsState createState() => _PetsState();
}

class _PetsState extends State<Pets> {
  final List<String> entries = <String>['1', '2', '3', '4', '5', '6'];
  final List<int> colorCodes = <int>[500, 100, 500, 100, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          "Pets Cadastrados",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: EdgeInsets.all(8),
              height: 150,
              color: Colors.amber[colorCodes[index]],
              child: Row(
                children: [
                  Image.asset(
                    "images/Pets.png",
                    width: 180,
                    height: 250,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Nome: Pet ${entries[index]}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Center(
                            child: Text(
                              'Raça: Pet ${entries[index]}',
                              style: TextStyle(fontSize: 20),
                            )),
                        Center(
                            child: Text(
                              'Porte: Pet ${entries[index]}',
                              style: TextStyle(fontSize: 20),
                            )),
                        Center(
                            child: Text(
                              'Fone/Zap: Zap Pet ${entries[index]}',
                              style: TextStyle(fontSize: 20),
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

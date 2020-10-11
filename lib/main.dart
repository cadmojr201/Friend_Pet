import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friend_pet/cadastro_pet.dart';
import 'package:friend_pet/login.dart';
import 'package:friend_pet/relatorios.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    title: "Friend Pet",
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> entries = <String>['1', '2', '3', '4', '5', '6'];
  final List<int> colorCodes = <int>[500, 100, 500, 100, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Friend Pet",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Menu',
              child: Icon(
                Icons.filter_list,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Colors.black45,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Cachorro",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Colors.black45,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Gato",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Colors.black45,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Outros",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: Colors.black45,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Limpar filtro",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                backgroundImage: AssetImage("images/Perfil.jpg"),
              ),
              accountName: Text("Cadmo Jr"),
              accountEmail: Text("cadmojr201@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contato'),
            ),
            ListTile(
              leading: Icon(Icons.format_line_spacing),
              title: Text('Relatórios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Relatorios()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Sair'),
            ),
          ],
        ),
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
                    width: 160,
                    height: 230,
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
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Center(
                            child: Text(
                          'Raça: Pet ${entries[index]}',
                          style: TextStyle(fontSize: 16),
                        )),
                        Center(
                            child: Text(
                          'Porte: Pet ${entries[index]}',
                          style: TextStyle(fontSize: 16),
                        )),
                        Center(
                            child: Text(
                          'Fone/Zap: Zap Pet ${entries[index]}',
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CadastroPet()),
          );
        },
        label: Text(
          'Cadastrar pet',
          style: TextStyle(fontSize: 20),
        ),
        icon: Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login_view.dart';
import '../model/exames.dart';
// import '../json/exames.json';

final List<Exame> exames = [
  Exame(
    id: '1',
    nome: 'João Pedro',
    status: 'Processando',
    date: '08/08/2022',
  ),
  Exame(
    id: '2',
    nome: 'Marcelo Miguel',
    status: 'Finalizado',
    date: '09/08/2022',
  ),
  Exame(
    id: '3',
    nome: 'Marcos Pontes',
    status: 'Processando',
    date: '05/08/2022',
  ),
];

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);
  static const routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Exames'),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                Login.routeName,
              );
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20, top: 28),
              child: const Text(
                'Lista de Exames',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            Column(
                children: exames.map((tx) {
              return GestureDetector(
                onTap: () => exames,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: tx.status == 'Finalizado'
                                ? Colors.green
                                : Colors.lightBlue,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          tx.status,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: tx.status == 'Finalizado'
                                ? Colors.green
                                : Colors.lightBlue,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.nome,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            tx.date.toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList())
          ],
        ),
      ),
    );
  }
}

class Finalizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold());
  }
}

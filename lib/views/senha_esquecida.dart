import 'package:flutter/material.dart';
import 'login_view.dart';

class Senha extends StatelessWidget {
  const Senha({Key? key}) : super(key: key);
  static const routeName = '/senha';

@override
Widget build (BuildContext context){
  Size size = MediaQuery.of(context).size;
  return MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Essa é a sua senha',
      style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: BackButton(color: Colors.black, onPressed:() {Navigator.of(context).pushReplacementNamed(
                                    Login.routeName,
                                  );}),
    ),
    body: 
  SizedBox(
    width: size.width / 1,
    height: size.width / 1,
    child: Image.asset("lib/assets/Login-Teste-Senha-1234-18-11-2022.gif"),),)
  );}}
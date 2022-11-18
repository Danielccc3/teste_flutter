import 'package:flutter/material.dart';
import 'package:teste_flutter/views/senha_esquecida.dart';
import '../main.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = '/login';

static const String _title = 'Bem Vindo';

@override
  Widget build (BuildContext context){
  Size size = MediaQuery.of(context).size;
  return MaterialApp(
    title: _title,
    home: Scaffold(
  appBar: AppBar(title: const Text(_title),),
  body: 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(margin: const EdgeInsets.only(left: 20, top: 28),
      child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 30),
                  ),),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Usuário'
          ),
        ),),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Senha'
          ),
        ),),
      Container(
        width: size.width / 1,
        height: 50,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.black.withOpacity(0.04);
        }
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) {
          return Colors.black.withOpacity(0.12);
        }
        return null; // Defer to the widget's default.
      },
    ),
  ),
          onPressed: () {},
          child: const Text('Logar',
          style: TextStyle(color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700),),
              ),
            ),
            Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top:10),
              child: TextButton(
                child: const Text('Esqueci minha senha'),
                onPressed: () {Navigator.of(context).pushReplacementNamed(
                                    Senha.routeName,
                                  );},),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

